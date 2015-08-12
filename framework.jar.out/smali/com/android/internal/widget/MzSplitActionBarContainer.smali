.class public Lcom/android/internal/widget/MzSplitActionBarContainer;
.super Lcom/android/internal/widget/MzActionBarContainer;
.source "MzSplitActionBarContainer.java"

# interfaces
.implements Lcom/android/internal/widget/MzActionBarContainer$OnAfterIdentifyBackgroundListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "MzSplitActionBarContainer"


# instance fields
.field private mBackButton:Lcom/meizu/widget/KeyBackButton;

.field private mCellWidth:I

.field private mContentHeight:I

.field private mCustomBackButton:Z

.field private mDefaultSplitBackground:Landroid/graphics/drawable/Drawable;

.field private mEnableBackButton:Z

.field private mExtraPadding:I

.field private mMatchBackButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private mMatchMenuDrawable:Landroid/graphics/drawable/Drawable;

.field private mMatchSplitBackground:Landroid/graphics/drawable/Drawable;

.field private mMenuView:Landroid/view/View;

.field private mShouldDectePaddingAjustment:Z

.field private mSmartBarConfig:Lcom/meizu/widget/SmartBarConfiguration;

.field private mUpdateBackButton:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1}, Lcom/android/internal/widget/MzActionBarContainer;-><init>(Landroid/content/Context;)V

    .line 25
    iput-object v1, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mDefaultSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 26
    iput-boolean v0, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mUpdateBackButton:Z

    .line 27
    iput-boolean v0, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mCustomBackButton:Z

    .line 28
    iput-object v1, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mMatchBackButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 29
    iput-object v1, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mMatchMenuDrawable:Landroid/graphics/drawable/Drawable;

    .line 30
    iput-object v1, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mMatchSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 185
    iput-boolean v0, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mEnableBackButton:Z

    .line 267
    iput-boolean v0, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mShouldDectePaddingAjustment:Z

    .line 297
    iput v0, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mContentHeight:I

    .line 39
    invoke-direct {p0, p1}, Lcom/android/internal/widget/MzSplitActionBarContainer;->init(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/MzActionBarContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    iput-object v1, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mDefaultSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 26
    iput-boolean v0, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mUpdateBackButton:Z

    .line 27
    iput-boolean v0, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mCustomBackButton:Z

    .line 28
    iput-object v1, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mMatchBackButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 29
    iput-object v1, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mMatchMenuDrawable:Landroid/graphics/drawable/Drawable;

    .line 30
    iput-object v1, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mMatchSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 185
    iput-boolean v0, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mEnableBackButton:Z

    .line 267
    iput-boolean v0, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mShouldDectePaddingAjustment:Z

    .line 297
    iput v0, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mContentHeight:I

    .line 34
    invoke-direct {p0, p1}, Lcom/android/internal/widget/MzSplitActionBarContainer;->init(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method private findBackButton(Landroid/view/View;)Landroid/view/View;
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 318
    const/4 v0, 0x0

    .line 319
    .local v0, "backButton":Landroid/view/View;
    instance-of v3, p1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    .line 320
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    move-object v3, p1

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    move-object v3, p1

    .line 321
    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 322
    .local v1, "child":Landroid/view/View;
    invoke-direct {p0, v1}, Lcom/android/internal/widget/MzSplitActionBarContainer;->findBackButton(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 323
    if-eqz v0, :cond_1

    instance-of v3, v0, Lcom/meizu/widget/KeyBackButton;

    if-eqz v3, :cond_1

    .line 330
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "i":I
    :cond_0
    :goto_1
    return-object v0

    .line 320
    .restart local v1    # "child":Landroid/view/View;
    .restart local v2    # "i":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 327
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "i":I
    :cond_2
    instance-of v3, p1, Lcom/meizu/widget/KeyBackButton;

    if-eqz v3, :cond_0

    .line 328
    move-object v0, p1

    goto :goto_1
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/internal/widget/MzSplitActionBarContainer;->updateSmartBarConfiguration()V

    .line 45
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MzSplitActionBarContainer;->setIsNeedToIdentify(Z)V

    .line 47
    return-void
.end method

.method private removeBackButton(Landroid/view/View;)V
    .locals 1
    .param p1, "button"    # Landroid/view/View;

    .prologue
    .line 222
    if-eqz p1, :cond_0

    .line 223
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 224
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 228
    .end local v0    # "parent":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method private setBackButtonDrawable(Landroid/graphics/drawable/Drawable;Z)V
    .locals 1
    .param p1, "backIcon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isSystem"    # Z

    .prologue
    .line 379
    if-eqz p1, :cond_1

    .line 380
    if-nez p2, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mCustomBackButton:Z

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    if-eqz v0, :cond_1

    .line 382
    iget-object v0, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/KeyBackButton;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 385
    :cond_1
    return-void
.end method

.method private updateBackButtonDrawable()V
    .locals 2

    .prologue
    .line 337
    iget-boolean v1, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mCustomBackButton:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mMatchBackButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mMatchSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 338
    invoke-direct {p0, p0}, Lcom/android/internal/widget/MzSplitActionBarContainer;->findBackButton(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 339
    .local v0, "backButton":Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/meizu/widget/KeyBackButton;

    if-eqz v1, :cond_0

    .line 340
    check-cast v0, Lcom/meizu/widget/KeyBackButton;

    .end local v0    # "backButton":Landroid/view/View;
    iget-object v1, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mMatchBackButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/meizu/widget/KeyBackButton;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 343
    :cond_0
    return-void
.end method

.method private updateSmartBarConfiguration()V
    .locals 1

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/android/internal/widget/MzSplitActionBarContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/widget/SmartBarConfiguration;->get(Landroid/content/Context;)Lcom/meizu/widget/SmartBarConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mSmartBarConfig:Lcom/meizu/widget/SmartBarConfiguration;

    .line 270
    iget-object v0, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mSmartBarConfig:Lcom/meizu/widget/SmartBarConfiguration;

    invoke-virtual {v0}, Lcom/meizu/widget/SmartBarConfiguration;->getHorizontalPadding()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mExtraPadding:I

    .line 271
    iget-object v0, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mSmartBarConfig:Lcom/meizu/widget/SmartBarConfiguration;

    invoke-virtual {v0}, Lcom/meizu/widget/SmartBarConfiguration;->getButtonWidth()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mCellWidth:I

    .line 273
    return-void
.end method

.method private updateSplitBackground()V
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mMenuView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mMatchSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 278
    iget-object v0, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mDefaultSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 279
    invoke-virtual {p0}, Lcom/android/internal/widget/MzSplitActionBarContainer;->getSplitBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mDefaultSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 281
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mMatchSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, v0}, Lcom/android/internal/widget/MzActionBarContainer;->setSplitBackground(Landroid/graphics/drawable/Drawable;)V

    .line 287
    :cond_2
    :goto_0
    return-void

    .line 283
    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mDefaultSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 284
    iget-object v0, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mDefaultSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, v0}, Lcom/android/internal/widget/MzActionBarContainer;->setSplitBackground(Landroid/graphics/drawable/Drawable;)V

    .line 285
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mDefaultSplitBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method


# virtual methods
.method public onAfterIdentifyBackground(ZII)V
    .locals 3
    .param p1, "isSplit"    # Z
    .param p2, "backgroundColor"    # I
    .param p3, "splitBackgroundColor"    # I

    .prologue
    const/4 v2, 0x1

    .line 352
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mCustomBackButton:Z

    if-nez v0, :cond_0

    .line 353
    if-nez p3, :cond_1

    .line 354
    iget-object v0, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mMatchSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 355
    invoke-virtual {p0}, Lcom/android/internal/widget/MzSplitActionBarContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/flyme/internal/R$drawable;->mz_tab_background:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mMatchSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 356
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MzSplitActionBarContainer;->setIsNeedToIdentify(Z)V

    .line 357
    invoke-direct {p0}, Lcom/android/internal/widget/MzSplitActionBarContainer;->updateSplitBackground()V

    .line 358
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/MzSplitActionBarContainer;->setIsNeedToIdentify(Z)V

    .line 376
    :cond_0
    :goto_0
    return-void

    .line 361
    :cond_1
    if-ne p3, v2, :cond_3

    .line 362
    invoke-virtual {p0}, Lcom/android/internal/widget/MzSplitActionBarContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/flyme/internal/R$drawable;->mz_ic_tab_back_normal_dark:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mMatchBackButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 366
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mMatchBackButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    if-eqz v0, :cond_4

    .line 368
    iget-object v0, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mMatchBackButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0, v2}, Lcom/android/internal/widget/MzSplitActionBarContainer;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_0

    .line 363
    :cond_3
    const/4 v0, -0x1

    if-ne p3, v0, :cond_2

    .line 364
    invoke-virtual {p0}, Lcom/android/internal/widget/MzSplitActionBarContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/flyme/internal/R$drawable;->mz_ic_tab_back_normal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mMatchBackButtonDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 370
    :cond_4
    iput-boolean v2, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mUpdateBackButton:Z

    .line 371
    invoke-virtual {p0}, Lcom/android/internal/widget/MzSplitActionBarContainer;->postInvalidate()V

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 305
    iget-boolean v0, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mUpdateBackButton:Z

    if-eqz v0, :cond_0

    .line 306
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mUpdateBackButton:Z

    .line 307
    invoke-direct {p0}, Lcom/android/internal/widget/MzSplitActionBarContainer;->updateBackButtonDrawable()V

    .line 309
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/widget/MzActionBarContainer;->onDraw(Landroid/graphics/Canvas;)V

    .line 310
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 14
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/android/internal/widget/MzSplitActionBarContainer;->getTabContainer()Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/internal/widget/MzScrollingTabContainerView;

    .line 132
    .local v10, "tabContainer":Lcom/android/internal/widget/MzScrollingTabContainerView;
    if-eqz v10, :cond_1

    invoke-virtual {v10}, Lcom/android/internal/widget/MzScrollingTabContainerView;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-eq v11, v12, :cond_1

    invoke-virtual {v10}, Lcom/android/internal/widget/MzScrollingTabContainerView;->isShowAtBottom()Z

    move-result v11

    if-eqz v11, :cond_1

    const/4 v6, 0x1

    .line 135
    .local v6, "hasTabAtBottom":Z
    :goto_0
    if-eqz v6, :cond_2

    .line 136
    invoke-super/range {p0 .. p5}, Lcom/android/internal/widget/MzActionBarContainer;->onLayout(ZIIII)V

    .line 173
    :cond_0
    :goto_1
    return-void

    .line 132
    .end local v6    # "hasTabAtBottom":Z
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 138
    .restart local v6    # "hasTabAtBottom":Z
    :cond_2
    const-string v11, "MzSplitActionBarContainer"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "onLayout:mBackButton="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "; mMenuView="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mMenuView:Landroid/view/View;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "; mEnableBackButton="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mEnableBackButton:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "; mExtraPadding="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mExtraPadding:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const/4 v1, 0x0

    .line 140
    .local v1, "backButtonWidth":I
    sub-int v0, p5, p3

    .line 141
    .local v0, "backButtonHeight":I
    iget-object v11, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    if-eqz v11, :cond_3

    .line 142
    iget-object v11, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    invoke-virtual {v11}, Lcom/meizu/widget/KeyBackButton;->getMeasuredWidth()I

    move-result v11

    iget v12, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mExtraPadding:I

    add-int v1, v11, v12

    .line 143
    iget-object v11, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    invoke-virtual {v11}, Lcom/meizu/widget/KeyBackButton;->getMeasuredHeight()I

    move-result v0

    .line 144
    const-string v11, "MzSplitActionBarContainer"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "onLayout: backButtonWidth="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_3
    invoke-super/range {p0 .. p5}, Lcom/android/internal/widget/MzActionBarContainer;->onLayout(ZIIII)V

    .line 149
    invoke-virtual {p0}, Lcom/android/internal/widget/MzSplitActionBarContainer;->getChildCount()I

    move-result v3

    .line 151
    .local v3, "childCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    if-ge v7, v3, :cond_4

    .line 152
    invoke-virtual {p0, v7}, Lcom/android/internal/widget/MzSplitActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 153
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v11

    add-int v4, v11, v1

    .line 154
    .local v4, "childLeft":I
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v11

    add-int v5, v11, v1

    .line 155
    .local v5, "childRight":I
    invoke-virtual {v2, v4}, Landroid/view/View;->setLeft(I)V

    .line 156
    invoke-virtual {v2, v5}, Landroid/view/View;->setRight(I)V

    .line 151
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 159
    .end local v2    # "child":Landroid/view/View;
    .end local v4    # "childLeft":I
    .end local v5    # "childRight":I
    :cond_4
    iget-object v11, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    if-eqz v11, :cond_5

    .line 160
    iget-object v11, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    iget v12, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mExtraPadding:I

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13, v1, v0}, Lcom/meizu/widget/KeyBackButton;->layout(IIII)V

    .line 163
    :cond_5
    iget-object v11, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mMenuView:Landroid/view/View;

    if-eqz v11, :cond_0

    .line 164
    iget v11, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mExtraPadding:I

    sub-int v8, p4, v11

    .line 165
    .local v8, "menuRight":I
    iget-object v11, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mMenuView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 166
    .local v9, "menuWidth":I
    iget-object v11, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    if-nez v11, :cond_6

    .line 167
    sub-int v11, p4, p2

    add-int/2addr v11, v9

    div-int/lit8 v8, v11, 0x2

    .line 169
    :cond_6
    iget-object v11, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mMenuView:Landroid/view/View;

    sub-int v12, v8, v9

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13, v8, v0}, Landroid/view/View;->layout(IIII)V

    .line 170
    const-string v11, "MzSplitActionBarContainer"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "onLayout: mMenuView.layout:menuRight = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "; menuWidth"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public onMeasure(II)V
    .locals 22
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 51
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MzSplitActionBarContainer;->getTabContainer()Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/android/internal/widget/MzScrollingTabContainerView;

    .line 52
    .local v16, "tabContainer":Lcom/android/internal/widget/MzScrollingTabContainerView;
    if-eqz v16, :cond_2

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/widget/MzScrollingTabContainerView;->getVisibility()I

    move-result v19

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_2

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/widget/MzScrollingTabContainerView;->isShowAtBottom()Z

    move-result v19

    if-eqz v19, :cond_2

    const/4 v9, 0x1

    .line 55
    .local v9, "hasTabAtBottom":Z
    :goto_0
    if-eqz v9, :cond_5

    .line 56
    if-eqz v16, :cond_0

    .line 60
    const/4 v8, 0x1

    .line 62
    .local v8, "disableBackButton":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mOrientatinPortrait:Z

    move/from16 v19, v0

    if-eqz v19, :cond_4

    if-nez v8, :cond_3

    const/16 v19, 0x1

    :goto_1
    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/MzScrollingTabContainerView;->setBackButtonEnable(Z)V

    .line 65
    .end local v8    # "disableBackButton":Z
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1

    .line 66
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/widget/MzSplitActionBarContainer;->removeBackButton(Landroid/view/View;)V

    .line 68
    :cond_1
    invoke-super/range {p0 .. p2}, Lcom/android/internal/widget/MzActionBarContainer;->onMeasure(II)V

    .line 127
    :goto_2
    return-void

    .line 52
    .end local v9    # "hasTabAtBottom":Z
    :cond_2
    const/4 v9, 0x0

    goto :goto_0

    .line 62
    .restart local v8    # "disableBackButton":Z
    .restart local v9    # "hasTabAtBottom":Z
    :cond_3
    const/16 v19, 0x0

    goto :goto_1

    :cond_4
    const/16 v19, 0x0

    goto :goto_1

    .line 70
    .end local v8    # "disableBackButton":Z
    :cond_5
    if-eqz v16, :cond_6

    .line 71
    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/MzScrollingTabContainerView;->setBackButtonEnable(Z)V

    .line 73
    :cond_6
    const-string v19, "MzSplitActionBarContainer"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "onMeasure:mBackButton="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "; mMenuView="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mMenuView:Landroid/view/View;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "; mEnableBackButton="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mEnableBackButton:Z

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    move-object/from16 v19, v0

    if-eqz v19, :cond_7

    .line 76
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mCellWidth:I

    move/from16 v19, v0

    const/high16 v20, 0x40000000    # 2.0f

    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v18

    .line 77
    .local v18, "widthSpec":I
    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 78
    .local v11, "heightSpec":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1, v11}, Lcom/meizu/widget/KeyBackButton;->measure(II)V

    .line 81
    .end local v11    # "heightSpec":I
    .end local v18    # "widthSpec":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mMenuView:Landroid/view/View;

    move-object/from16 v19, v0

    if-eqz v19, :cond_8

    .line 82
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mCellWidth:I

    move/from16 v19, v0

    const/high16 v20, 0x40000000    # 2.0f

    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v18

    .line 83
    .restart local v18    # "widthSpec":I
    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 84
    .restart local v11    # "heightSpec":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mMenuView:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1, v11}, Landroid/view/View;->measure(II)V

    .line 87
    .end local v11    # "heightSpec":I
    .end local v18    # "widthSpec":I
    :cond_8
    const/4 v2, 0x0

    .line 88
    .local v2, "backButtonWidth":I
    const/4 v3, 0x0

    .line 89
    .local v3, "backButtonWidthExtra":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    move-object/from16 v19, v0

    if-eqz v19, :cond_9

    .line 90
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/meizu/widget/KeyBackButton;->getMeasuredWidth()I

    move-result v2

    .line 91
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mExtraPadding:I

    move/from16 v19, v0

    add-int v3, v2, v19

    .line 94
    :cond_9
    const/4 v13, 0x0

    .line 95
    .local v13, "menuWidth":I
    const/4 v14, 0x0

    .line 96
    .local v14, "menuWidthExtra":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mMenuView:Landroid/view/View;

    move-object/from16 v19, v0

    if-eqz v19, :cond_a

    .line 97
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mMenuView:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    .line 98
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mExtraPadding:I

    move/from16 v19, v0

    add-int v14, v2, v19

    .line 101
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mContentHeight:I

    move/from16 v19, v0

    if-lez v19, :cond_b

    .line 102
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mContentHeight:I

    move/from16 v19, v0

    const/high16 v20, 0x40000000    # 2.0f

    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 105
    :cond_b
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v19

    sub-int v19, v19, v3

    sub-int v6, v19, v14

    .line 106
    .local v6, "contentWidth":I
    const/high16 v19, 0x40000000    # 2.0f

    move/from16 v0, v19

    invoke-static {v6, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 108
    .local v7, "contentWidthSpec":I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-super {v0, v7, v1}, Lcom/android/internal/widget/MzActionBarContainer;->onMeasure(II)V

    .line 110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    move-object/from16 v19, v0

    if-eqz v19, :cond_c

    .line 111
    const/high16 v19, 0x40000000    # 2.0f

    move/from16 v0, v19

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 112
    .local v5, "buttonWidthSpec":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MzSplitActionBarContainer;->getMeasuredHeight()I

    move-result v19

    const/high16 v20, 0x40000000    # 2.0f

    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 113
    .local v4, "buttonHeightSpec":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v4}, Lcom/meizu/widget/KeyBackButton;->measure(II)V

    .line 116
    .end local v4    # "buttonHeightSpec":I
    .end local v5    # "buttonWidthSpec":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mMenuView:Landroid/view/View;

    move-object/from16 v19, v0

    if-eqz v19, :cond_d

    .line 117
    const/high16 v19, 0x40000000    # 2.0f

    move/from16 v0, v19

    invoke-static {v13, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 118
    .local v15, "menuWidthSpec":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MzSplitActionBarContainer;->getMeasuredHeight()I

    move-result v19

    const/high16 v20, 0x40000000    # 2.0f

    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 119
    .local v12, "menuHeightSpec":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mMenuView:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v15, v12}, Landroid/view/View;->measure(II)V

    .line 122
    .end local v12    # "menuHeightSpec":I
    .end local v15    # "menuWidthSpec":I
    :cond_d
    const-string v19, "MzSplitActionBarContainer"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "onMeasure:backButtonWidth="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "; menuWidth="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v17

    .line 124
    .local v17, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MzSplitActionBarContainer;->getMeasuredHeight()I

    move-result v10

    .line 125
    .local v10, "height":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v10}, Lcom/android/internal/widget/MzSplitActionBarContainer;->setMeasuredDimension(II)V

    goto/16 :goto_2
.end method

.method public onSmartBarConfigurationChanged()V
    .locals 0

    .prologue
    .line 263
    invoke-direct {p0}, Lcom/android/internal/widget/MzSplitActionBarContainer;->updateSmartBarConfiguration()V

    .line 264
    invoke-virtual {p0}, Lcom/android/internal/widget/MzSplitActionBarContainer;->requestLayout()V

    .line 265
    return-void
.end method

.method public requestLayout()V
    .locals 0

    .prologue
    .line 177
    invoke-super {p0}, Lcom/android/internal/widget/MzActionBarContainer;->requestLayout()V

    .line 178
    return-void
.end method

.method public setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "backIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 258
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/MzSplitActionBarContainer;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;Z)V

    .line 259
    return-void
.end method

.method public setBackButtonEnable(ZZ)V
    .locals 4
    .param p1, "enable"    # Z
    .param p2, "addBackButton"    # Z

    .prologue
    const/4 v3, -0x2

    .line 190
    const-string v0, "MzSplitActionBarContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBackButtonEnable: mBackButton = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; enable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; addBackButton = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; mEnableBackButton="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mEnableBackButton:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    sget-object v0, Landroid/os/BuildExt;->HAS_PERMANENTKEY:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/BuildExt;->hasSmartBar()Z

    move-result v0

    if-nez v0, :cond_1

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    iput-boolean p1, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mEnableBackButton:Z

    .line 196
    if-eqz p2, :cond_4

    iget-boolean v0, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mEnableBackButton:Z

    if-eqz v0, :cond_4

    .line 197
    iget-object v0, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    if-nez v0, :cond_2

    .line 198
    new-instance v0, Lcom/meizu/widget/KeyBackButton;

    iget-object v1, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/meizu/widget/KeyBackButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    .line 201
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    invoke-direct {p0, v0}, Lcom/android/internal/widget/MzSplitActionBarContainer;->removeBackButton(Landroid/view/View;)V

    .line 202
    iget-object v0, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    invoke-virtual {p0, v0, v3, v3}, Lcom/android/internal/widget/MzSplitActionBarContainer;->addView(Landroid/view/View;II)V

    .line 204
    iget-boolean v0, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mCustomBackButton:Z

    if-nez v0, :cond_3

    .line 205
    iget-object v0, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mMatchSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 206
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mUpdateBackButton:Z

    .line 207
    iget-object v0, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    invoke-virtual {p0}, Lcom/android/internal/widget/MzSplitActionBarContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/flyme/internal/R$drawable;->mz_ic_tab_back_normal_dark:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/widget/KeyBackButton;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 218
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/widget/MzSplitActionBarContainer;->updateSplitBackground()V

    goto :goto_0

    .line 211
    :cond_4
    iget-object v0, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    if-eqz v0, :cond_5

    .line 212
    iget-object v0, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    invoke-direct {p0, v0}, Lcom/android/internal/widget/MzSplitActionBarContainer;->removeBackButton(Landroid/view/View;)V

    .line 213
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    .line 216
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mUpdateBackButton:Z

    goto :goto_1
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 299
    iput p1, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mContentHeight:I

    .line 300
    invoke-virtual {p0}, Lcom/android/internal/widget/MzSplitActionBarContainer;->requestLayout()V

    .line 301
    return-void
.end method

.method public setMenu(Landroid/view/View;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/View;

    .prologue
    const/4 v1, -0x2

    .line 232
    if-eqz p1, :cond_1

    .line 233
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 234
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 238
    :cond_0
    invoke-virtual {p0, p1, v1, v1}, Lcom/android/internal/widget/MzSplitActionBarContainer;->addView(Landroid/view/View;II)V

    .line 239
    instance-of v1, p1, Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 240
    iget-object v1, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mMatchSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    move-object v1, p1

    .line 241
    check-cast v1, Landroid/widget/ImageView;

    sget v2, Lcom/flyme/internal/R$drawable;->mz_ic_tab_more:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 250
    .end local v0    # "parent":Landroid/view/ViewGroup;
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mMenuView:Landroid/view/View;

    .line 251
    invoke-direct {p0}, Lcom/android/internal/widget/MzSplitActionBarContainer;->updateSplitBackground()V

    .line 252
    return-void

    .line 243
    .restart local v0    # "parent":Landroid/view/ViewGroup;
    :cond_2
    iget-object v1, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mMatchMenuDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    move-object v1, p1

    .line 244
    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mMatchMenuDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setSplitBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "bg"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 291
    invoke-super {p0, p1}, Lcom/android/internal/widget/MzActionBarContainer;->setSplitBackground(Landroid/graphics/drawable/Drawable;)V

    .line 292
    iget-object v0, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mDefaultSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 293
    iput-object p1, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mDefaultSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 295
    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 182
    invoke-super {p0, p1}, Lcom/android/internal/widget/MzActionBarContainer;->setVisibility(I)V

    .line 183
    return-void
.end method
