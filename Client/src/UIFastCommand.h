//----------------------------------------------------------------------
// ����:�������ؼ�
// ����:lh 2004-11-02
// ��;:��������һ����������ֻ��һ��ָ���ⲿʵ��Ŀ�ݷ�ʽ
// ����޸�����:
//----------------------------------------------------------------------

#pragma once
#include "UICommandCompent.h"

namespace GUI
{
typedef void (*GuiComEvent)(CGuiData *pSender,CCommandObj* pItem,bool& isAccept);

class CCommandObj;
class CFastCommand : public CCommandCompent
{
public:

	bool topBar;

	CFastCommand(CForm& frmOwn);
	CFastCommand(const CFastCommand& rhs);
	CFastCommand& operator=(const CFastCommand& rhs);
	~CFastCommand() override;
	GUI_CLONE(CFastCommand)

	void		Render() override;
	bool		MouseRun( int x, int y, DWORD key ) override;
	eAccept		SetCommand( CCommandObj* p, int x, int y ) override;
	void		DragRender() override;
	CCompent*   GetHintCompent( int x, int y ) override;
	void        RenderHint( int x, int y ) override;

	static void			DelCommand(const CCommandObj* p );

	static CFastCommand*	GetFastCommand( int index );		
	static CFastCommand* FintFastCommand(const CCommandObj* p);	
	static void FindFastCommandIndexes(const CCommandObj* p, std::array<int, 36>& arr);
	void Exec(bool rightclick = false) const;
    CCommandObj*		GetCommand() const { return _pCommand;		}
    void                DelCommand() const { if( _pCommand ) DelCommand(_pCommand);    }
    void                AddCommand( CCommandObj* p );

public:
    GuiComEvent         evtChange;      // ����������仯

protected:
    void				_SetSelf();
    static	void		_DragEnd(CGuiData *pSender, const int x, const int y, const DWORD key)	{
        static_cast<CFastCommand*>(pSender)->_DragEnd( x, y, key );
    }
    void				_DragEnd( int x, int y, DWORD key );

protected:
	CCommandObj*		_pCommand;

	typedef std::vector<CFastCommand*> fasts;
	static fasts		_fast;

};

// ��������һ������ʵ��
class COneCommand : public CCommandCompent
{
public:
	enum eShowStyle
	{
		enumSmall,		// ������ʾͼ�귽ʽ
		enumSale,		// ��ʾ�۳�
	};
	COneCommand(CForm& frmOwn);
	COneCommand(const COneCommand& rhs);
	COneCommand& operator=(const COneCommand& rhs);
	~COneCommand() override;
	GUI_CLONE(COneCommand)

	void		Render() override;
	bool		MouseRun( int x, int y, DWORD key ) override;
	void		DragRender() override;
	eAccept		SetCommand( CCommandObj* p, int x, int y ) override;
	CCompent*   GetHintCompent( int x, int y ) override;
	void        RenderHint( int x, int y ) override;

	CCommandObj*		GetCommand() const { return _pCommand;		}
    void                DelCommand();

    void                AddCommand( CCommandObj* p );

	UseComandEvent  GetUseCommantEvent() override { return evtUseCommand; }

	void				SetActivePic( CGuiPic* p )		{ _pActive=p;			}
	void				SetIsShowActive( bool v )		{ _IsShowActive = v;	}
	void				SetShowStyle( eShowStyle v )	{ _eShowStyle=v;		}
	CGuiPic*			GetActivePic() const {return _pActive;}
public:
	GuiComEvent			evtBeforeAccept;
    GuiComEvent         evtThrowItem;

    UseComandEvent      evtUseCommand;

protected:
	void				_SetSelf();
	void				_Copy( const COneCommand& rhs );
	static	void		_DragEnd(CGuiData *pSender, int x, int y, const DWORD key)	{
		static_cast<COneCommand*>(pSender)->_DragEnd( x, y, key );
	}
	void				_DragEnd( int x, int y, DWORD key );

protected:
	CCommandObj*		_pCommand;
	eShowStyle			_eShowStyle;
	bool				_IsShowActive;

    CGuiPic*			_pActive;			// ����ͼ��

};

// ��������


}
