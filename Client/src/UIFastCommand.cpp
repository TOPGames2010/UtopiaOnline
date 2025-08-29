#include "stdafx.h"
#include "uifastcommand.h"
#include "UICommand.h"
#include "uigoodsgrid.h"
#include "UIFormMgr.h"
#include "UIEquipForm.h"
#include "UIBoatForm.h"
#include "character.h"
#include "uiitemcommand.h"

//---------------------------------------------------------------------------
// class CFastCommand
//---------------------------------------------------------------------------
CFastCommand::fasts CFastCommand::_fast;

CFastCommand::CFastCommand(CForm& frmOwn)
	: CCommandCompent(frmOwn), _pCommand(nullptr), evtChange(nullptr), topBar(false)
{
	_fast.push_back( this );

    _SetSelf();
}

CFastCommand::~CFastCommand()
{
	for(auto it=_fast.begin(); it!=_fast.end(); ++it )
	{
		if( (*it)==this )
		{
			_fast.erase(it);
			return;
		}
	}
}

CFastCommand::CFastCommand(const CFastCommand& rhs)
	: CCommandCompent(rhs), evtChange(rhs.evtChange), _pCommand(rhs._pCommand)
{
	_fast.push_back( this );

    _SetSelf();
}

CFastCommand& CFastCommand::operator=(const CFastCommand& rhs)
{
	if (this == &rhs) {
		return *this; // Handle self-assignment by returning *this
	}
    CCommandCompent::operator =(rhs);

	_pCommand = rhs._pCommand;
    evtChange = rhs.evtChange;
	return *this;
}

void CFastCommand::Render() {
	if (_pCommand)
		_pCommand->Render(GetX(), GetY());
}

bool CFastCommand::MouseRun( int x, int y, DWORD key )
{
	if( !IsNormal() ) return false;

	if ( !_pCommand ) 
	{
		InRect( x, y );
	}
	else if( IsNoDrag( x, y, key ) ){
		if(key&Mouse_RDown||key&Mouse_LUp){
			Exec(key&Mouse_RDown);
		}
	}

	return _IsMouseIn;
}

void CFastCommand::Exec(const bool rightclick) const
{
	if (_pCommand == nullptr) {
		return;
	}
	char type;
	short grid;
	CEquipMgr::_GetCommandShortCutType(_pCommand, type, grid);

	if (type != defItemShortCutType) {
		_pCommand->Exec();
	}
	else {
		const auto pFastItem = dynamic_cast<CItemCommand*>(_pCommand);
		const int fastItemType = pFastItem->GetItemInfo()->sType;
		int equipItemType = 0;
		if (const SItemGrid grdItem = g_stUIBoat.GetHuman()->GetPart().SLink[enumEQUIP_LHAND]; grdItem.sID != 0) {
			if (const CItemRecord* pEquipItem = GetItemRecordInfo(grdItem.sID); pEquipItem) {
				equipItemType = pEquipItem->sType;
			}
		}
		if (equipItemType == 11 && fastItemType == 1 || rightclick) {
			_pCommand->ExecRightClick();
		}
		else {
			_pCommand->Exec();
		}
	}
}



void CFastCommand::DelCommand(const CCommandObj* p) {
	for (const auto& it : _fast) {
		if (it->_pCommand && it->_pCommand == p) {
			it->_pCommand = nullptr;
		}
	}
}

void CFastCommand::FindFastCommandIndexes(const CCommandObj* p, std::array<int, 36>& arr) {
	int arrCount = 0;
	for (const auto& it : _fast) {
		if (const bool left = it->_pCommand && it->_pCommand == p; left) {
			arr[arrCount++] = it->nTag;
		}
	}
}

CFastCommand* CFastCommand::GetFastCommand(const int index){
	return _fast[index]?_fast[index]: nullptr;
	
}

CFastCommand* CFastCommand::FintFastCommand(const CCommandObj* p) {
	for (const auto& it : _fast) {
		if (it->_pCommand && it->_pCommand == p) {
			return it;
		}
	}
	return nullptr;
}

eAccept CFastCommand::SetCommand( CCommandObj* p, int x, int y )			
{ 
	if( !p || (p && p->IsDragFast()) )
	{
        bool isAccept=false;
        if( evtChange )  evtChange(this,p,isAccept);
        if( isAccept ) 
        {
            if( p ) p->SetIsFast(true);

            if( _pCommand && _pCommand!=p ) 
            {
                _pCommand->SetIsFast(false);
            }
            _pCommand = p;
        }
        return enumFast;
	}
    return enumRefuse;
}

void CFastCommand::AddCommand(CCommandObj* p) {
	if (_pCommand && _pCommand != p) {
		_pCommand->SetIsFast(false);
	}
	_pCommand = p;
	if (p) {
		p->SetIsFast(true);
	}
}

void CFastCommand::RenderHint( int x, int y )
{	
    if( _pCommand ) 
    {
        _pCommand->RenderHint( x, y );
    }
    else 
    {
        _RenderHint( _strHint.c_str(), x, y );
    }
}

void CFastCommand::DragRender() {
	if (_pCommand)
		_pCommand->Render(GetX() + CDrag::GetDragX(), GetY() + CDrag::GetDragY());
}

void CFastCommand::_DragEnd(const int x, const int y, DWORD key) {

	if (CForm* form = CFormMgr::s_Mgr.GetHitForm(x, y); form) {
		CCompent* p = form->GetHitCommand(x, y);
		if (!p)
			return;

		const auto fast = dynamic_cast<CFastCommand*>(p);
		CCommandObj* oldp = nullptr;
		if (fast)
			oldp = fast->GetCommand();

		switch (p->SetCommand(_pCommand, x, y)) {
		case enumFast:
			SetCommand(oldp, x, y);
			break;
		case enumAccept:
			break;
		case enumRefuse:
			break;
		}
	}
	else {
		SetCommand(nullptr, x, y);
	}
}

void CFastCommand::_SetSelf()
{
    if( !_pDrag ) _pDrag = new CDrag;

    _pDrag->SetIsMove( false );
    _pDrag->evtMouseDragEnd = _DragEnd;
}

CCompent* CFastCommand::GetHintCompent( int x, int y )    
{ 
	if( GetIsShow() && InRect( x, y ) )
	{
		if( _pCommand )
		{
			SetHintItem( _pCommand );
			return this;
		}
		else if( !_strHint.empty() )
		{
			return this;
		}		
	}
    return nullptr;
} 

//---------------------------------------------------------------------------
// class COneCommand
//---------------------------------------------------------------------------
COneCommand::COneCommand(CForm& frmOwn)
: CCommandCompent(frmOwn), evtBeforeAccept(nullptr), evtThrowItem(nullptr), evtUseCommand(nullptr)
, _pCommand(nullptr), _eShowStyle(enumSmall), _IsShowActive(false), _pActive(nullptr)
{
	_SetSelf();
}

COneCommand::COneCommand(const COneCommand& rhs)
: CCommandCompent(rhs), _pCommand(nullptr)
{
	_SetSelf();
	if( rhs._pCommand ) _pCommand = rhs._pCommand->Clone();
	_Copy( rhs );
}

COneCommand& COneCommand::operator=(const COneCommand& rhs)
{
	// Check for self-assignment
	if (this == &rhs) {
		return *this;
	}
    CCommandCompent::operator =(rhs);

	if( _pCommand && _pCommand!=rhs._pCommand ) delete _pCommand;
	if( rhs._pCommand ) _pCommand = rhs._pCommand->Clone();
	_Copy( rhs );
	return *this;
}

COneCommand::~COneCommand()
{
	//if( _pCommand ) delete _pCommand;
	SAFE_DELETE(_pCommand);	// UI锟斤拷锟斤拷锟斤拷锟斤拷
}

void COneCommand::_SetSelf()
{
    if( !_pDrag ) _pDrag = new CDrag;

	_pDrag->SetIsMove( false );
	_pDrag->evtMouseDragEnd = _DragEnd;
}

void COneCommand::_Copy( const COneCommand& rhs )
{
    evtThrowItem = rhs.evtThrowItem;
    evtBeforeAccept = rhs.evtBeforeAccept;
    evtUseCommand = rhs.evtUseCommand;

	_IsShowActive = rhs._IsShowActive;
	_eShowStyle = rhs._eShowStyle;
}

void COneCommand::Render()
{
	if ( _pCommand ) 
	{
		if( _eShowStyle==enumSmall ) 
		{
			_pCommand->Render( GetX(), GetY() );
			if( _pActive && _IsShowActive )
			{
				_pCommand->RenderEnergy( GetX(), GetY() );
				_pActive->Render( GetX(), GetY() );
			}
		}
		else
		{
			_pCommand->SaleRender( GetX(), GetY(), GetWidth(), GetHeight() );
		}
	}
	
	
	
}

bool COneCommand::MouseRun( int x, int y, DWORD key )
{
	if( !IsNormal() ) return false;

	if ( !_pCommand )
	{
		InRect( x, y );
	}
	else if( IsNoDrag( x, y, key ) )
	{
		if( key & Mouse_LDown )
		{
			if( _pCommand->MouseDown() ) 
				return true;
		}

		if( key & Mouse_LDB )
		{
			_pCommand->Exec();
		}
	}
	return _IsMouseIn;
}

void COneCommand::DragRender() {
	if (_pCommand)
		_pCommand->Render(GetX() + CDrag::GetDragX(), GetY() + CDrag::GetDragY());
}

void COneCommand::_DragEnd( int x, int y, DWORD key )
{
	if( CForm * form = CFormMgr::s_Mgr.GetHitForm( x, y ); form)
	{
		CCompent* p = form->GetHitCommand( x, y );
		if( !p ) return;

		switch( p->SetCommand( _pCommand, x, y ) )
		{
		case enumFast:
			break;
		case enumAccept:
			_pCommand = nullptr;
			break;
		case enumRefuse:
			break;
		}
	}
    else
    {
        if( _pCommand )
        {
            bool isThrow = false;

            if( evtThrowItem ) evtThrowItem(this, _pCommand, isThrow);
            if( isThrow )
            {
                delete _pCommand;
                _pCommand = nullptr;
            }
        }
    }
}

eAccept	COneCommand::SetCommand( CCommandObj* p, int x, int y )	
{ 
	bool isAccept = false;
	if( evtBeforeAccept ) evtBeforeAccept( this, p, isAccept );

	if( isAccept )
	{
        AddCommand( p );
		return enumAccept;			
	}
	return enumRefuse;
}

void COneCommand::DelCommand() 
{ 
    if( _pCommand ) 
    {
        delete _pCommand;
        _pCommand = nullptr;
    }
}

void COneCommand::RenderHint( int x, int y )
{
    if( _pCommand ) 
    {
        _pCommand->RenderHint( x, y );
    }
    else 
    {
        _RenderHint( _strHint.c_str(), x, y );
    }
}

void COneCommand::AddCommand( CCommandObj* p )    
{
    if( _pCommand && _pCommand!=p ) 
    {
        delete _pCommand;
		_pCommand = nullptr;
    }

    p->SetParent( this );
    p->SetIndex( defCommandDefaultIndex );
    _pCommand=p; 
}

CCompent* COneCommand::GetHintCompent( int x, int y )    
{ 
	if( GetIsShow() && InRect( x, y ) )
	{
		if( _pCommand )
		{
			if( _eShowStyle==enumSmall ) 
			{
				SetHintItem( _pCommand );
			}
			return this;
		}
		if( !_strHint.empty() )
		{
			return this;
		}
	}
    return nullptr;
} 
