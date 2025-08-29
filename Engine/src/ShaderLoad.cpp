//

#include "stdafx.h"
#include "ShaderLoad.h"
#include "lwgraphicsutil.h"


#define USER_SHADER_NUM             8

LW_RESULT LoadShader0(lwISysGraphics* sys_graphics)
{
    LW_RESULT ret = LW_RET_FAILED;

    lwISystem* sys = sys_graphics->GetSystem();

    char path[LW_MAX_PATH];
    lwIPathInfo* path_info = 0;
    sys->GetInterface((LW_VOID**)&path_info, LW_GUID_PATHINFO);
    
    lwIResourceMgr* res_mgr;
    lwIShaderMgr* shader_mgr;

    sys_graphics->GetInterface((LW_VOID**)&res_mgr, LW_GUID_RESOURCEMGR);
    shader_mgr = res_mgr->GetShaderMgr();




	D3DVERTEXELEMENT9 ve0[] =
	{
        { 0, 0, D3DDECLTYPE_FLOAT3, D3DDECLMETHOD_DEFAULT, D3DDECLUSAGE_POSITION, 0 },
		{ 0, 12, D3DDECLTYPE_D3DCOLOR, D3DDECLMETHOD_DEFAULT, D3DDECLUSAGE_BLENDINDICES, 0 },
		{ 0, 16, D3DDECLTYPE_FLOAT3, D3DDECLMETHOD_DEFAULT, D3DDECLUSAGE_NORMAL,  0 },
		{ 0, 28, D3DDECLTYPE_FLOAT2, D3DDECLMETHOD_DEFAULT, D3DDECLUSAGE_TEXCOORD,  0 },
		
        { 0xFF, 0, D3DDECLTYPE_UNUSED, 0, 0, 0 },

	};

	D3DVERTEXELEMENT9 ve1[] =
	{
        { 0, 0, D3DDECLTYPE_FLOAT3, D3DDECLMETHOD_DEFAULT, D3DDECLUSAGE_POSITION, 0 },
		{ 0, 12, D3DDECLTYPE_FLOAT1, D3DDECLMETHOD_DEFAULT, D3DDECLUSAGE_BLENDWEIGHT, 0 },
		{ 0, 16, D3DDECLTYPE_D3DCOLOR, D3DDECLMETHOD_DEFAULT, D3DDECLUSAGE_BLENDINDICES, 0 },
		{ 0, 20, D3DDECLTYPE_FLOAT3, D3DDECLMETHOD_DEFAULT, D3DDECLUSAGE_NORMAL,  0 },
		{ 0, 32, D3DDECLTYPE_FLOAT2, D3DDECLMETHOD_DEFAULT, D3DDECLUSAGE_TEXCOORD,  0 },
		
        { 0xFF, 0, D3DDECLTYPE_UNUSED, 0, 0, 0 },

	};

	D3DVERTEXELEMENT9 ve2[] =
	{
        { 0, 0, D3DDECLTYPE_FLOAT3, D3DDECLMETHOD_DEFAULT, D3DDECLUSAGE_POSITION, 0 },
		{ 0, 12, D3DDECLTYPE_FLOAT2, D3DDECLMETHOD_DEFAULT, D3DDECLUSAGE_BLENDWEIGHT, 0 },
		{ 0, 20, D3DDECLTYPE_D3DCOLOR, D3DDECLMETHOD_DEFAULT, D3DDECLUSAGE_BLENDINDICES, 0 },
		{ 0, 24, D3DDECLTYPE_FLOAT3, D3DDECLMETHOD_DEFAULT, D3DDECLUSAGE_NORMAL,  0 },
		{ 0, 36, D3DDECLTYPE_FLOAT2, D3DDECLMETHOD_DEFAULT, D3DDECLUSAGE_TEXCOORD,  0 },
		
        { 0xFF, 0, D3DDECLTYPE_UNUSED, 0, 0, 0 },

	};

	D3DVERTEXELEMENT9 ve3[] =
	{
        { 0, 0, D3DDECLTYPE_FLOAT3, D3DDECLMETHOD_DEFAULT, D3DDECLUSAGE_POSITION, 0 },
		{ 0, 12, D3DDECLTYPE_FLOAT3, D3DDECLMETHOD_DEFAULT, D3DDECLUSAGE_BLENDWEIGHT, 0 },
		{ 0, 24, D3DDECLTYPE_D3DCOLOR, D3DDECLMETHOD_DEFAULT, D3DDECLUSAGE_BLENDINDICES, 0 },
		{ 0, 28, D3DDECLTYPE_FLOAT3, D3DDECLMETHOD_DEFAULT, D3DDECLUSAGE_NORMAL,  0 },
		{ 0, 40, D3DDECLTYPE_FLOAT2, D3DDECLMETHOD_DEFAULT, D3DDECLUSAGE_TEXCOORD,  0 },
		
        { 0xFF, 0, D3DDECLTYPE_UNUSED, 0, 0, 0 },

	};
	/*D3DVERTEXELEMENT9 ve4[] =
	{
        { 0, 0, D3DDECLTYPE_FLOAT3, D3DDECLMETHOD_DEFAULT, D3DDECLUSAGE_POSITION, 0 },
		{ 0, 12, D3DDECLTYPE_FLOAT4, D3DDECLMETHOD_DEFAULT, D3DDECLUSAGE_BLENDWEIGHT, 0 },
		{ 0, 28, D3DDECLTYPE_D3DCOLOR, D3DDECLMETHOD_DEFAULT, D3DDECLUSAGE_BLENDINDICES, 0 },
		{ 0, 32, D3DDECLTYPE_FLOAT3, D3DDECLMETHOD_DEFAULT, D3DDECLUSAGE_NORMAL,  0 },
		{ 0, 44, D3DDECLTYPE_FLOAT2, D3DDECLMETHOD_DEFAULT, D3DDECLUSAGE_TEXCOORD,  0 },
		
        { 0xFF, 0, D3DDECLTYPE_UNUSED, 0, 0, 0 },

	};*/

    D3DVERTEXELEMENT9 vepnt0[] =
    {
        {0, 0, D3DDECLTYPE_FLOAT3, D3DDECLMETHOD_DEFAULT, D3DDECLUSAGE_POSITION, 0},
        {0, 12, D3DDECLTYPE_FLOAT3, D3DDECLMETHOD_DEFAULT, D3DDECLUSAGE_NORMAL, 0},
        {0, 24, D3DDECLTYPE_FLOAT2, D3DDECLMETHOD_DEFAULT, D3DDECLUSAGE_TEXCOORD, 0},

        {0xFF, 0, D3DDECLTYPE_UNUSED, 0, 0, 0},

    };
    D3DVERTEXELEMENT9 vepndt0[] =
    {
        {0, 0, D3DDECLTYPE_FLOAT3, D3DDECLMETHOD_DEFAULT, D3DDECLUSAGE_POSITION, 0},
        {0, 12, D3DDECLTYPE_FLOAT3, D3DDECLMETHOD_DEFAULT, D3DDECLUSAGE_NORMAL, 0},
        {0, 24, D3DDECLTYPE_D3DCOLOR, D3DDECLMETHOD_DEFAULT, D3DDECLUSAGE_COLOR, 0},
        {0, 28, D3DDECLTYPE_FLOAT2, D3DDECLMETHOD_DEFAULT, D3DDECLUSAGE_TEXCOORD, 0},

        {0xFF, 0, D3DDECLTYPE_UNUSED, 0, 0, 0},

    };

    D3DVERTEXELEMENT9* ve_buf[] = 
    {
        ve0,
        ve1,
        ve2,
        ve3,
        //ve4,
        vepnt0,
        vepnt0,
        vepndt0,
        vepnt0,
        vepndt0,
        vepndt0,
        vepndt0,
    };

    DWORD decl_type[] =
    {
        VDT_PU4NT0,
        VDT_PB1U4NT0,
        VDT_PB2U4NT0,
        VDT_PB3U4NT0,
        //VDT_PB4U4NT0_DX9
        VDT_PNT0,
        VDT_PNT0,
        VDT_PNDT0,
        VDT_PNT0,
        VDT_PNDT0,
        VDT_PNDT0,
        VDT_PNDT0,
    };

    constexpr int decl_num = std::size(decl_type);

    for(int i = 0; i < decl_num; i++)
    {
        IDirect3DVertexDeclarationX* this_decl;
        if(LW_SUCCEEDED(shader_mgr->QueryVertexDeclaration(&this_decl, decl_type[i])))
            continue;

        if(LW_FAILED(shader_mgr->RegisterVertexDeclaration(decl_type[i], ve_buf[i])))
            goto __ret;
    }


    

    {


        DWORD shader_type[] =
        {
            VST_PU4NT0_LD,
            VST_PB1U4NT0_LD,
            VST_PB2U4NT0_LD,
            VST_PB3U4NT0_LD,
            VST_PNT0_LD_TT0,
            VST_PNT0_TT0,
            VST_PNDT0_LD_TT0,
            VST_PNT0_LD,
            VST_PNDT0,
            VST_PNDT0_LD,
            VST_PNDT0_TT0,
        };

        int shader_num = std::size(shader_type);

        const char* shader_file[] =
        {
            // skin mesh
            "pu4nt0_ld.vsh",
            "pb1u4nt0_ld.vsh",
            "pb2u4nt0_ld.vsh",
            "pb3u4nt0_ld.vsh",
            // ...
            "vs_pnt0_ld_t0uvmat.vsh",
            "vs_pnt0_t0uvmat.vsh",
            "vs_pndt0_ld_t0uvmat.vsh",
            "vs_pnt0_ld.vsh",
            "vs_pndt0.vsh",
            "vs_pndt0_ld.vsh",
            "vs_pndt0_t0uvmat.vsh",

        };

        DWORD file_types[] =
        {
            VS_FILE_ASM,
            VS_FILE_ASM,
            VS_FILE_ASM,
            VS_FILE_ASM,

            VS_FILE_ASM,
            VS_FILE_ASM,
            VS_FILE_ASM,
            VS_FILE_ASM,
            VS_FILE_ASM,
            VS_FILE_ASM,
            VS_FILE_ASM,
        };

        D3DXMACRO defines[] =
        {
            { "NUM_SKIN_WEIGHTS", "1"},
            { "NUM_SKIN_WEIGHTS", "2"},
            { "NUM_SKIN_WEIGHTS", "3"},
            { "NUM_SKIN_WEIGHTS", "4"},

            {"",""},
            {"",""},
            {"",""},
            {"",""},
            {"",""},
            {"",""},
            {"",""},
        };

        for (int i = 0; i < shader_num; i++)
        {
            sprintf(path, "%s%s", path_info->GetPath(PATH_TYPE_SHADER), shader_file[i]);
            if (LW_FAILED(shader_mgr->RegisterVertexShader(shader_type[i], path, file_types[i], &defines[i])))
                goto __ret;
        }



        // lwShaderDeclMgr
        lwIShaderDeclMgr* decl_mgr = shader_mgr->GetShaderDeclMgr();

        decl_mgr->CreateShaderDeclSet(VDT_PNT0, 8);
        decl_mgr->CreateShaderDeclSet(VDT_PNDT0, 8);

        const DWORD sdci_num = 4;
        lwShaderDeclCreateInfo sdci[sdci_num] =
        {
            SDCI_VALUE(VST_PNT0_LD_TT0, VDT_PNT0, VSLT_DIRECTIONAL, VSAT_TEXTURETRANSFORM0, "vs_pnt0_ld_t0uvmat.vsh"),
            SDCI_VALUE(VST_PNT0_TT0, VDT_PNT0, VSLT_INVALID, VSAT_TEXTURETRANSFORM0, "vs_pnt0_t0uvmat.vsh"),
            SDCI_VALUE(VST_PNDT0_LD_TT0, VDT_PNDT0, VSLT_DIRECTIONAL, VSAT_TEXTURETRANSFORM0, "vs_pndt0_ld_t0uvmat.vsh"),
            SDCI_VALUE(VST_PNDT0_TT0, VDT_PNDT0, VSLT_INVALID, VSAT_TEXTURETRANSFORM0, "vs_pndt0_t0uvmat.vsh"),
        };

        for (auto& i : sdci)
        {
            decl_mgr->SetShaderDeclInfo(&i);
        }

        ret = LW_RET_OK;
    }
__ret:
    if(ret != LW_RET_OK)
    {
        LG_MSGBOX("LoadShader0 error");
    }
    return ret;

}


LW_RESULT LoadShader1(lwISysGraphics* sys_graphics)
{
    LW_RESULT ret = LW_RET_FAILED;

    lwISystem* sys = sys_graphics->GetSystem();

    char path[LW_MAX_PATH];
    lwIPathInfo* path_info = 0;
    sys->GetInterface((LW_VOID**)&path_info, LW_GUID_PATHINFO);
    
    lwIResourceMgr* res_mgr;

    sys_graphics->GetInterface((LW_VOID**)&res_mgr, LW_GUID_RESOURCEMGR);
    lwIShaderMgr* shader_mgr = res_mgr->GetShaderMgr();


    DWORD shader_type[] =
    {
        VSTU_SKINMESH0_TT1,
        VSTU_SKINMESH1_TT1,
        VSTU_SKINMESH2_TT1,
        VSTU_SKINMESH3_TT1,

        VSTU_SKINMESH0_TT2,
        VSTU_SKINMESH1_TT2,
        VSTU_SKINMESH2_TT2,
        VSTU_SKINMESH3_TT2,

        VSTU_SKINMESH0_TT3,
        VSTU_SKINMESH1_TT3,
        VSTU_SKINMESH2_TT3,
        VSTU_SKINMESH3_TT3,

    };

	const char* shader_file[] = 
    {
        "skinmesh8_1_tt1.vsh",
        "skinmesh8_2_tt1.vsh",
        "skinmesh8_1_tt2.vsh",
        "skinmesh8_2_tt2.vsh",
        "skinmesh8_1_tt3.vsh",
        "skinmesh8_2_tt3.vsh",
    };

    for(int i = 0; i < 6; i++)
    {
        sprintf(path, "%s%s", path_info->GetPath(PATH_TYPE_SHADER), shader_file[i]);
        if(LW_FAILED(shader_mgr->RegisterVertexShader(shader_type[i], path, VS_FILE_ASM)))
            goto __ret;
    }



    ret = LW_RET_OK;
__ret:
    if(ret != LW_RET_OK)
    {
        LG_MSGBOX("LoadShader1 error");
    }

    return ret;
}


