.class public Landroid/renderscript/Path;
.super Landroid/renderscript/BaseObj;
.source "Path.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/Path$Primitive;
    }
.end annotation


# instance fields
.field mCoverageToAlpha:Z

.field mLoopBuffer:Landroid/renderscript/Allocation;

.field mPrimitive:Landroid/renderscript/Path$Primitive;

.field mQuality:F

.field mVertexBuffer:Landroid/renderscript/Allocation;


# direct methods
.method constructor <init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Path$Primitive;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;F)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/renderscript/RenderScript;
    .param p4, "p"    # Landroid/renderscript/Path$Primitive;
    .param p5, "vtx"    # Landroid/renderscript/Allocation;
    .param p6, "loop"    # Landroid/renderscript/Allocation;
    .param p7, "q"    # F

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 43
    iput-object p5, p0, Landroid/renderscript/Path;->mVertexBuffer:Landroid/renderscript/Allocation;

    .line 44
    iput-object p6, p0, Landroid/renderscript/Path;->mLoopBuffer:Landroid/renderscript/Allocation;

    .line 45
    iput-object p4, p0, Landroid/renderscript/Path;->mPrimitive:Landroid/renderscript/Path$Primitive;

    .line 46
    iput p7, p0, Landroid/renderscript/Path;->mQuality:F

    .line 47
    return-void
.end method

.method public static createDynamicPath(Landroid/renderscript/RenderScript;Landroid/renderscript/Path$Primitive;FLandroid/renderscript/Allocation;)Landroid/renderscript/Path;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "p"    # Landroid/renderscript/Path$Primitive;
    .param p2, "quality"    # F
    .param p3, "vtx"    # Landroid/renderscript/Allocation;

    .prologue
    .line 77
    const/4 v0, 0x0

    return-object v0
.end method

.method public static createDynamicPath(Landroid/renderscript/RenderScript;Landroid/renderscript/Path$Primitive;FLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;)Landroid/renderscript/Path;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "p"    # Landroid/renderscript/Path$Primitive;
    .param p2, "quality"    # F
    .param p3, "vtx"    # Landroid/renderscript/Allocation;
    .param p4, "loops"    # Landroid/renderscript/Allocation;

    .prologue
    .line 81
    const/4 v0, 0x0

    return-object v0
.end method

.method public static createStaticPath(Landroid/renderscript/RenderScript;Landroid/renderscript/Path$Primitive;FLandroid/renderscript/Allocation;)Landroid/renderscript/Path;
    .locals 9
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "p"    # Landroid/renderscript/Path$Primitive;
    .param p2, "quality"    # F
    .param p3, "vtx"    # Landroid/renderscript/Allocation;

    .prologue
    const/4 v0, 0x0

    .line 67
    iget v2, p1, Landroid/renderscript/Path$Primitive;->mID:I

    const/4 v3, 0x0

    invoke-virtual {p3, p0}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    move-object v1, p0

    move v8, p2

    invoke-virtual/range {v1 .. v8}, Landroid/renderscript/RenderScript;->nPathCreate(IZJJF)J

    move-result-wide v2

    .line 68
    .local v2, "id":J
    new-instance v1, Landroid/renderscript/Path;

    move-object v4, p0

    move-object v5, p1

    move-object v6, v0

    move-object v7, v0

    move v8, p2

    invoke-direct/range {v1 .. v8}, Landroid/renderscript/Path;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Path$Primitive;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;F)V

    .line 69
    .local v1, "newPath":Landroid/renderscript/Path;
    return-object v1
.end method

.method public static createStaticPath(Landroid/renderscript/RenderScript;Landroid/renderscript/Path$Primitive;FLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;)Landroid/renderscript/Path;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "p"    # Landroid/renderscript/Path$Primitive;
    .param p2, "quality"    # F
    .param p3, "vtx"    # Landroid/renderscript/Allocation;
    .param p4, "loops"    # Landroid/renderscript/Allocation;

    .prologue
    .line 73
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getLoopAllocation()Landroid/renderscript/Allocation;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Landroid/renderscript/Path;->mLoopBuffer:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public getPrimitive()Landroid/renderscript/Path$Primitive;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Landroid/renderscript/Path;->mPrimitive:Landroid/renderscript/Path$Primitive;

    return-object v0
.end method

.method public getVertexAllocation()Landroid/renderscript/Allocation;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Landroid/renderscript/Path;->mVertexBuffer:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method updateFromNative()V
    .locals 0

    .prologue
    .line 63
    return-void
.end method
