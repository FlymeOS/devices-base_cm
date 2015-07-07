.class Landroid/transition/ChangeBounds$HorizontalOffsetProperty;
.super Landroid/transition/ChangeBounds$OffsetProperty;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/transition/ChangeBounds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HorizontalOffsetProperty"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 384
    const-string v0, "offsetLeftAndRight"

    invoke-direct {p0, v0}, Landroid/transition/ChangeBounds$OffsetProperty;-><init>(Ljava/lang/String;)V

    .line 385
    return-void
.end method


# virtual methods
.method protected offsetBy(Landroid/view/View;I)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "by"    # I

    .prologue
    .line 389
    invoke-virtual {p1, p2}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 390
    return-void
.end method
