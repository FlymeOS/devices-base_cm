.class Landroid/widget/ScrollView$MzDelaySpringBack;
.super Ljava/lang/Object;
.source "ScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MzDelaySpringBack"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ScrollView;


# direct methods
.method constructor <init>(Landroid/widget/ScrollView;)V
    .locals 0

    .prologue
    .line 1983
    iput-object p1, p0, Landroid/widget/ScrollView$MzDelaySpringBack;->this$0:Landroid/widget/ScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 1986
    iget-object v0, p0, Landroid/widget/ScrollView$MzDelaySpringBack;->this$0:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->mzGetScrollRange()I

    move-result v6

    .line 1988
    .local v6, "bottom":I
    iget-object v0, p0, Landroid/widget/ScrollView$MzDelaySpringBack;->this$0:Landroid/widget/ScrollView;

    iget-object v0, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget-object v1, p0, Landroid/widget/ScrollView$MzDelaySpringBack;->this$0:Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getScrollX()I

    move-result v1

    iget-object v2, p0, Landroid/widget/ScrollView$MzDelaySpringBack;->this$0:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1989
    iget-object v0, p0, Landroid/widget/ScrollView$MzDelaySpringBack;->this$0:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 1992
    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollView$MzDelaySpringBack;->this$0:Landroid/widget/ScrollView;

    iput-boolean v3, v0, Landroid/widget/ScrollView;->mShouldDelaySpringBack:Z

    .line 1993
    return-void
.end method
