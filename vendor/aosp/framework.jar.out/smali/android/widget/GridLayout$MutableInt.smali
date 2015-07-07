.class final Landroid/widget/GridLayout$MutableInt;
.super Ljava/lang/Object;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MutableInt"
.end annotation


# instance fields
.field public value:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2226
    invoke-virtual {p0}, Landroid/widget/GridLayout$MutableInt;->reset()V

    .line 2227
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 2229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2230
    iput p1, p0, Landroid/widget/GridLayout$MutableInt;->value:I

    .line 2231
    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    .prologue
    .line 2234
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/widget/GridLayout$MutableInt;->value:I

    .line 2235
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2239
    iget v0, p0, Landroid/widget/GridLayout$MutableInt;->value:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
