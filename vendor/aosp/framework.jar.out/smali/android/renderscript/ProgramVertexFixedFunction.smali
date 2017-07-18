.class public Landroid/renderscript/ProgramVertexFixedFunction;
.super Landroid/renderscript/ProgramVertex;
.source "ProgramVertexFixedFunction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;,
        Landroid/renderscript/ProgramVertexFixedFunction$Builder;,
        Landroid/renderscript/ProgramVertexFixedFunction$Constants;
    }
.end annotation


# direct methods
.method constructor <init>(JLandroid/renderscript/RenderScript;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/ProgramVertex;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 30
    return-void
.end method


# virtual methods
.method public bindConstants(Landroid/renderscript/ProgramVertexFixedFunction$Constants;)V
    .locals 2
    .param p1, "va"    # Landroid/renderscript/ProgramVertexFixedFunction$Constants;

    .prologue
    .line 42
    iget-object v0, p0, Landroid/renderscript/ProgramVertexFixedFunction;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 43
    invoke-virtual {p1}, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/ProgramVertexFixedFunction;->bindConstants(Landroid/renderscript/Allocation;I)V

    .line 41
    return-void
.end method
