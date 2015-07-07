.class public Lcom/android/internal/widget/FaceUnlockView;
.super Landroid/widget/RelativeLayout;
.source "FaceUnlockView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FaceUnlockView"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/FaceUnlockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method private resolveMeasured(II)I
    .locals 3
    .param p1, "measureSpec"    # I
    .param p2, "desired"    # I

    .prologue
    .line 36
    const/4 v0, 0x0

    .line 37
    .local v0, "result":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 38
    .local v1, "specSize":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 47
    move v0, v1

    .line 49
    :goto_0
    return v0

    .line 40
    :sswitch_0
    move v0, p2

    .line 41
    goto :goto_0

    .line 43
    :sswitch_1
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 44
    goto :goto_0

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v7, -0x80000000

    .line 54
    invoke-virtual {p0}, Lcom/android/internal/widget/FaceUnlockView;->getSuggestedMinimumWidth()I

    move-result v2

    .line 55
    .local v2, "minimumWidth":I
    invoke-virtual {p0}, Lcom/android/internal/widget/FaceUnlockView;->getSuggestedMinimumHeight()I

    move-result v1

    .line 56
    .local v1, "minimumHeight":I
    invoke-direct {p0, p1, v2}, Lcom/android/internal/widget/FaceUnlockView;->resolveMeasured(II)I

    move-result v6

    .line 57
    .local v6, "viewWidth":I
    invoke-direct {p0, p2, v1}, Lcom/android/internal/widget/FaceUnlockView;->resolveMeasured(II)I

    move-result v5

    .line 59
    .local v5, "viewHeight":I
    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 60
    .local v0, "chosenSize":I
    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 62
    .local v4, "newWidthMeasureSpec":I
    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 65
    .local v3, "newHeightMeasureSpec":I
    invoke-super {p0, v4, v3}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 66
    return-void
.end method
