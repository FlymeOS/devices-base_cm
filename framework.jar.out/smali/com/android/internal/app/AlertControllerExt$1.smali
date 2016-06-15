.class Lcom/android/internal/app/AlertControllerExt$1;
.super Ljava/lang/Object;
.source "AlertControllerExt.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/AlertControllerExt;->limitCustomPanelHeight(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/AlertControllerExt;

.field final synthetic val$dialogMaxHeight:I

.field final synthetic val$parentPanel:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/android/internal/app/AlertControllerExt;Landroid/widget/LinearLayout;I)V
    .locals 0

    .prologue
    .line 295
    iput-object p1, p0, Lcom/android/internal/app/AlertControllerExt$1;->this$0:Lcom/android/internal/app/AlertControllerExt;

    iput-object p2, p0, Lcom/android/internal/app/AlertControllerExt$1;->val$parentPanel:Landroid/widget/LinearLayout;

    iput p3, p0, Lcom/android/internal/app/AlertControllerExt$1;->val$dialogMaxHeight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 299
    iget-object v11, p0, Lcom/android/internal/app/AlertControllerExt$1;->val$parentPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v10

    .line 300
    .local v10, "vto":Landroid/view/ViewTreeObserver;
    invoke-virtual {v10, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 301
    iget-object v11, p0, Lcom/android/internal/app/AlertControllerExt$1;->this$0:Lcom/android/internal/app/AlertControllerExt;

    # getter for: Lcom/android/internal/app/AlertControllerExt;->mWindow:Landroid/view/Window;
    invoke-static {v11}, Lcom/android/internal/app/AlertControllerExt;->access$000(Lcom/android/internal/app/AlertControllerExt;)Landroid/view/Window;

    move-result-object v11

    const-string v12, "buttonPanel"

    invoke-static {v13, v12}, Lcom/meizu/util/InternalResUtils;->getInternalResId(ILjava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 304
    .local v0, "buttonPanel":Landroid/widget/LinearLayout;
    iget-object v11, p0, Lcom/android/internal/app/AlertControllerExt$1;->this$0:Lcom/android/internal/app/AlertControllerExt;

    # getter for: Lcom/android/internal/app/AlertControllerExt;->mWindow:Landroid/view/Window;
    invoke-static {v11}, Lcom/android/internal/app/AlertControllerExt;->access$000(Lcom/android/internal/app/AlertControllerExt;)Landroid/view/Window;

    move-result-object v11

    const-string v12, "contentPanel"

    invoke-static {v13, v12}, Lcom/meizu/util/InternalResUtils;->getInternalResId(ILjava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/meizu/widget/LimitedHeightLinearLayout;

    .line 307
    .local v2, "contentPanel":Lcom/meizu/widget/LimitedHeightLinearLayout;
    iget-object v11, p0, Lcom/android/internal/app/AlertControllerExt$1;->this$0:Lcom/android/internal/app/AlertControllerExt;

    # getter for: Lcom/android/internal/app/AlertControllerExt;->mWindow:Landroid/view/Window;
    invoke-static {v11}, Lcom/android/internal/app/AlertControllerExt;->access$000(Lcom/android/internal/app/AlertControllerExt;)Landroid/view/Window;

    move-result-object v11

    const-string v12, "topPanel"

    invoke-static {v13, v12}, Lcom/meizu/util/InternalResUtils;->getInternalResId(ILjava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 309
    .local v8, "topPanel":Landroid/widget/LinearLayout;
    iget-object v11, p0, Lcom/android/internal/app/AlertControllerExt$1;->this$0:Lcom/android/internal/app/AlertControllerExt;

    # getter for: Lcom/android/internal/app/AlertControllerExt;->mWindow:Landroid/view/Window;
    invoke-static {v11}, Lcom/android/internal/app/AlertControllerExt;->access$000(Lcom/android/internal/app/AlertControllerExt;)Landroid/view/Window;

    move-result-object v11

    const-string v12, "extractArea"

    invoke-static {v13, v12}, Lcom/meizu/util/InternalResUtils;->getInternalResId(ILjava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/meizu/widget/LimitedHeightLinearLayout;

    .line 312
    .local v4, "customLimitedPanel":Lcom/meizu/widget/LimitedHeightLinearLayout;
    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v9

    .line 313
    .local v9, "topPanelHeight":I
    const/4 v3, 0x0

    .line 314
    .local v3, "contentPanelHeight":I
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    .line 315
    .local v1, "buttonPanelHeight":I
    iget v11, p0, Lcom/android/internal/app/AlertControllerExt$1;->val$dialogMaxHeight:I

    sub-int/2addr v11, v9

    sub-int/2addr v11, v1

    div-int/lit8 v5, v11, 0x2

    .line 316
    .local v5, "halfOfSurplusHeight":I
    invoke-virtual {v2}, Lcom/meizu/widget/LimitedHeightLinearLayout;->getVisibility()I

    move-result v11

    if-nez v11, :cond_1

    .line 317
    iget-object v11, p0, Lcom/android/internal/app/AlertControllerExt$1;->this$0:Lcom/android/internal/app/AlertControllerExt;

    # getter for: Lcom/android/internal/app/AlertControllerExt;->mMessage:Ljava/lang/CharSequence;
    invoke-static {v11}, Lcom/android/internal/app/AlertControllerExt;->access$100(Lcom/android/internal/app/AlertControllerExt;)Ljava/lang/CharSequence;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 318
    iget-object v11, p0, Lcom/android/internal/app/AlertControllerExt$1;->this$0:Lcom/android/internal/app/AlertControllerExt;

    # getter for: Lcom/android/internal/app/AlertControllerExt;->mMessageView:Landroid/widget/TextView;
    invoke-static {v11}, Lcom/android/internal/app/AlertControllerExt;->access$200(Lcom/android/internal/app/AlertControllerExt;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->getHeight()I

    move-result v3

    .line 322
    :goto_0
    invoke-virtual {v2}, Lcom/meizu/widget/LimitedHeightLinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 324
    .local v6, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v11, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget v12, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v11, v12

    add-int/2addr v3, v11

    .line 325
    iget v11, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    sub-int v11, v5, v11

    iget v12, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v11, v12

    invoke-virtual {v2, v11}, Lcom/meizu/widget/LimitedHeightLinearLayout;->setMaxHeight(I)V

    .line 329
    .end local v6    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :goto_1
    invoke-virtual {v2}, Lcom/meizu/widget/LimitedHeightLinearLayout;->getMaxHeight()I

    move-result v11

    invoke-static {v3, v11}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 330
    iget v11, p0, Lcom/android/internal/app/AlertControllerExt$1;->val$dialogMaxHeight:I

    sub-int/2addr v11, v9

    sub-int/2addr v11, v3

    sub-int/2addr v11, v1

    invoke-static {v13, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 332
    .local v7, "maxHeight":I
    invoke-virtual {v4, v7}, Lcom/meizu/widget/LimitedHeightLinearLayout;->setMaxHeight(I)V

    .line 333
    iget-object v11, p0, Lcom/android/internal/app/AlertControllerExt$1;->val$parentPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 334
    const/4 v11, 0x1

    return v11

    .line 320
    .end local v7    # "maxHeight":I
    :cond_0
    invoke-virtual {v2}, Lcom/meizu/widget/LimitedHeightLinearLayout;->getHeight()I

    move-result v3

    goto :goto_0

    .line 327
    :cond_1
    invoke-virtual {v2, v13}, Lcom/meizu/widget/LimitedHeightLinearLayout;->setMaxHeight(I)V

    goto :goto_1
.end method
