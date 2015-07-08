.class public final Landroid/renderscript/Script$KernelID;
.super Landroid/renderscript/BaseObj;
.source "Script.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Script;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KernelID"
.end annotation


# instance fields
.field mScript:Landroid/renderscript/Script;

.field mSig:I

.field mSlot:I


# direct methods
.method constructor <init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Script;II)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/renderscript/RenderScript;
    .param p4, "s"    # Landroid/renderscript/Script;
    .param p5, "slot"    # I
    .param p6, "sig"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 41
    iput-object p4, p0, Landroid/renderscript/Script$KernelID;->mScript:Landroid/renderscript/Script;

    .line 42
    iput p5, p0, Landroid/renderscript/Script$KernelID;->mSlot:I

    .line 43
    iput p6, p0, Landroid/renderscript/Script$KernelID;->mSig:I

    .line 44
    return-void
.end method
