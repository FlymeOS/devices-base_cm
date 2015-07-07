.class Landroid/transition/ChangeBounds$VerticalOffsetProperty;
.super Landroid/transition/ChangeBounds$OffsetProperty;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/transition/ChangeBounds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VerticalOffsetProperty"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 395
    const-string v0, "offsetTopAndBottom"

    invoke-direct {p0, v0}, Landroid/transition/ChangeBounds$OffsetProperty;-><init>(Ljava/lang/String;)V

    .line 396
    return-void
.end method


# virtual methods
.method protected offsetBy(Landroid/view/View;I)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "by"    # I

    .prologue
    .line 400
    invoke-virtual {p1, p2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 401
    return-void
.end method
