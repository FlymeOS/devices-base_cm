.class public Landroid/renderscript/ProgramRaster;
.super Landroid/renderscript/BaseObj;
.source "ProgramRaster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/ProgramRaster$Builder;,
        Landroid/renderscript/ProgramRaster$CullMode;
    }
.end annotation


# instance fields
.field mCullMode:Landroid/renderscript/ProgramRaster$CullMode;

.field mPointSprite:Z


# direct methods
.method constructor <init>(JLandroid/renderscript/RenderScript;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/renderscript/ProgramRaster;->mPointSprite:Z

    .line 58
    sget-object v0, Landroid/renderscript/ProgramRaster$CullMode;->BACK:Landroid/renderscript/ProgramRaster$CullMode;

    iput-object v0, p0, Landroid/renderscript/ProgramRaster;->mCullMode:Landroid/renderscript/ProgramRaster$CullMode;

    .line 59
    return-void
.end method

.method public static CULL_BACK(Landroid/renderscript/RenderScript;)Landroid/renderscript/ProgramRaster;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 84
    iget-object v1, p0, Landroid/renderscript/RenderScript;->mProgramRaster_CULL_BACK:Landroid/renderscript/ProgramRaster;

    if-nez v1, :cond_0

    .line 85
    new-instance v0, Landroid/renderscript/ProgramRaster$Builder;

    invoke-direct {v0, p0}, Landroid/renderscript/ProgramRaster$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 86
    .local v0, "builder":Landroid/renderscript/ProgramRaster$Builder;
    sget-object v1, Landroid/renderscript/ProgramRaster$CullMode;->BACK:Landroid/renderscript/ProgramRaster$CullMode;

    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramRaster$Builder;->setCullMode(Landroid/renderscript/ProgramRaster$CullMode;)Landroid/renderscript/ProgramRaster$Builder;

    .line 87
    invoke-virtual {v0}, Landroid/renderscript/ProgramRaster$Builder;->create()Landroid/renderscript/ProgramRaster;

    move-result-object v1

    iput-object v1, p0, Landroid/renderscript/RenderScript;->mProgramRaster_CULL_BACK:Landroid/renderscript/ProgramRaster;

    .line 89
    .end local v0    # "builder":Landroid/renderscript/ProgramRaster$Builder;
    :cond_0
    iget-object v1, p0, Landroid/renderscript/RenderScript;->mProgramRaster_CULL_BACK:Landroid/renderscript/ProgramRaster;

    return-object v1
.end method

.method public static CULL_FRONT(Landroid/renderscript/RenderScript;)Landroid/renderscript/ProgramRaster;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 96
    iget-object v1, p0, Landroid/renderscript/RenderScript;->mProgramRaster_CULL_FRONT:Landroid/renderscript/ProgramRaster;

    if-nez v1, :cond_0

    .line 97
    new-instance v0, Landroid/renderscript/ProgramRaster$Builder;

    invoke-direct {v0, p0}, Landroid/renderscript/ProgramRaster$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 98
    .local v0, "builder":Landroid/renderscript/ProgramRaster$Builder;
    sget-object v1, Landroid/renderscript/ProgramRaster$CullMode;->FRONT:Landroid/renderscript/ProgramRaster$CullMode;

    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramRaster$Builder;->setCullMode(Landroid/renderscript/ProgramRaster$CullMode;)Landroid/renderscript/ProgramRaster$Builder;

    .line 99
    invoke-virtual {v0}, Landroid/renderscript/ProgramRaster$Builder;->create()Landroid/renderscript/ProgramRaster;

    move-result-object v1

    iput-object v1, p0, Landroid/renderscript/RenderScript;->mProgramRaster_CULL_FRONT:Landroid/renderscript/ProgramRaster;

    .line 101
    .end local v0    # "builder":Landroid/renderscript/ProgramRaster$Builder;
    :cond_0
    iget-object v1, p0, Landroid/renderscript/RenderScript;->mProgramRaster_CULL_FRONT:Landroid/renderscript/ProgramRaster;

    return-object v1
.end method

.method public static CULL_NONE(Landroid/renderscript/RenderScript;)Landroid/renderscript/ProgramRaster;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 108
    iget-object v1, p0, Landroid/renderscript/RenderScript;->mProgramRaster_CULL_NONE:Landroid/renderscript/ProgramRaster;

    if-nez v1, :cond_0

    .line 109
    new-instance v0, Landroid/renderscript/ProgramRaster$Builder;

    invoke-direct {v0, p0}, Landroid/renderscript/ProgramRaster$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 110
    .local v0, "builder":Landroid/renderscript/ProgramRaster$Builder;
    sget-object v1, Landroid/renderscript/ProgramRaster$CullMode;->NONE:Landroid/renderscript/ProgramRaster$CullMode;

    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramRaster$Builder;->setCullMode(Landroid/renderscript/ProgramRaster$CullMode;)Landroid/renderscript/ProgramRaster$Builder;

    .line 111
    invoke-virtual {v0}, Landroid/renderscript/ProgramRaster$Builder;->create()Landroid/renderscript/ProgramRaster;

    move-result-object v1

    iput-object v1, p0, Landroid/renderscript/RenderScript;->mProgramRaster_CULL_NONE:Landroid/renderscript/ProgramRaster;

    .line 113
    .end local v0    # "builder":Landroid/renderscript/ProgramRaster$Builder;
    :cond_0
    iget-object v1, p0, Landroid/renderscript/RenderScript;->mProgramRaster_CULL_NONE:Landroid/renderscript/ProgramRaster;

    return-object v1
.end method


# virtual methods
.method public getCullMode()Landroid/renderscript/ProgramRaster$CullMode;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Landroid/renderscript/ProgramRaster;->mCullMode:Landroid/renderscript/ProgramRaster$CullMode;

    return-object v0
.end method

.method public isPointSpriteEnabled()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Landroid/renderscript/ProgramRaster;->mPointSprite:Z

    return v0
.end method
