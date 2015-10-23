.class Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;
.super Landroid/widget/LinearLayout;
.source "MzScrollingTabContainerView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/MzScrollingTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabView"
.end annotation


# instance fields
.field private mCustomView:Landroid/view/View;

.field private mDelegate:Lcom/meizu/widget/GlowDelegate;

.field private mIconView:Landroid/widget/ImageView;

.field private mTab:Landroid/app/ActionBar$Tab;

.field private mTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/internal/widget/MzScrollingTabContainerView;


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/MzScrollingTabContainerView;Landroid/content/Context;Landroid/app/ActionBar$Tab;Z)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "tab"    # Landroid/app/ActionBar$Tab;
    .param p4, "forList"    # Z

    .prologue
    .line 503
    iput-object p1, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->this$0:Lcom/android/internal/widget/MzScrollingTabContainerView;

    .line 504
    const/4 v0, 0x0

    const v1, 0x10102f3

    invoke-direct {p0, p2, v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 505
    iput-object p3, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->mTab:Landroid/app/ActionBar$Tab;

    .line 509
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->setGravity(I)V

    .line 511
    if-eqz p4, :cond_0

    .line 512
    const v0, 0x800013

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->setGravity(I)V

    .line 515
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->update()V

    .line 516
    return-void
.end method


# virtual methods
.method public bindTab(Landroid/app/ActionBar$Tab;)V
    .locals 0
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;

    .prologue
    .line 519
    iput-object p1, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->mTab:Landroid/app/ActionBar$Tab;

    .line 520
    invoke-virtual {p0}, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->update()V

    .line 521
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 663
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 664
    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->mDelegate:Lcom/meizu/widget/GlowDelegate;

    if-eqz v0, :cond_0

    .line 665
    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->mDelegate:Lcom/meizu/widget/GlowDelegate;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/GlowDelegate;->onDraw(Landroid/graphics/Canvas;)V

    .line 667
    :cond_0
    return-void
.end method

.method public getDrawingAlpha()F
    .locals 1

    .prologue
    .line 670
    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->mDelegate:Lcom/meizu/widget/GlowDelegate;

    if-eqz v0, :cond_0

    .line 671
    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->mDelegate:Lcom/meizu/widget/GlowDelegate;

    invoke-virtual {v0}, Lcom/meizu/widget/GlowDelegate;->getGlowAlpha()F

    move-result v0

    .line 673
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public getGlowAlpha()F
    .locals 1

    .prologue
    .line 684
    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->mDelegate:Lcom/meizu/widget/GlowDelegate;

    if-eqz v0, :cond_0

    .line 685
    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->mDelegate:Lcom/meizu/widget/GlowDelegate;

    invoke-virtual {v0}, Lcom/meizu/widget/GlowDelegate;->getGlowAlpha()F

    move-result v0

    .line 687
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGlowScale()F
    .locals 1

    .prologue
    .line 698
    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->mDelegate:Lcom/meizu/widget/GlowDelegate;

    if-eqz v0, :cond_0

    .line 699
    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->mDelegate:Lcom/meizu/widget/GlowDelegate;

    invoke-virtual {v0}, Lcom/meizu/widget/GlowDelegate;->getGlowScale()F

    move-result v0

    .line 701
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public getTab()Landroid/app/ActionBar$Tab;
    .locals 1

    .prologue
    .line 658
    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->mTab:Landroid/app/ActionBar$Tab;

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 534
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 536
    const-class v0, Landroid/app/ActionBar$Tab;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 537
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 541
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 543
    const-class v0, Landroid/app/ActionBar$Tab;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 544
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 635
    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->mTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/meizu/util/ToastUtils;->showToast(Landroid/view/View;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    .line 636
    const/4 v0, 0x1

    return v0
.end method

.method public onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 548
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 551
    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->this$0:Lcom/android/internal/widget/MzScrollingTabContainerView;

    iget v0, v0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mMaxTabWidth:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->this$0:Lcom/android/internal/widget/MzScrollingTabContainerView;

    iget v1, v1, Lcom/android/internal/widget/MzScrollingTabContainerView;->mMaxTabWidth:I

    if-le v0, v1, :cond_0

    .line 552
    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->this$0:Lcom/android/internal/widget/MzScrollingTabContainerView;

    iget v0, v0, Lcom/android/internal/widget/MzScrollingTabContainerView;->mMaxTabWidth:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v0, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 555
    :cond_0
    return-void
.end method

.method public setDrawingAlpha(F)V
    .locals 1
    .param p1, "x"    # F

    .prologue
    .line 678
    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->mDelegate:Lcom/meizu/widget/GlowDelegate;

    if-eqz v0, :cond_0

    .line 679
    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->mDelegate:Lcom/meizu/widget/GlowDelegate;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/GlowDelegate;->setDrawingAlpha(F)V

    .line 681
    :cond_0
    return-void
.end method

.method public setGlowAlpha(F)V
    .locals 1
    .param p1, "x"    # F

    .prologue
    .line 692
    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->mDelegate:Lcom/meizu/widget/GlowDelegate;

    if-eqz v0, :cond_0

    .line 693
    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->mDelegate:Lcom/meizu/widget/GlowDelegate;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/GlowDelegate;->setGlowAlpha(F)V

    .line 695
    :cond_0
    return-void
.end method

.method public setGlowScale(F)V
    .locals 1
    .param p1, "x"    # F

    .prologue
    .line 706
    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->mDelegate:Lcom/meizu/widget/GlowDelegate;

    if-eqz v0, :cond_0

    .line 707
    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->mDelegate:Lcom/meizu/widget/GlowDelegate;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/GlowDelegate;->setGlowScale(F)V

    .line 709
    :cond_0
    return-void
.end method

.method public setPressed(Z)V
    .locals 1
    .param p1, "pressed"    # Z

    .prologue
    .line 712
    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->mDelegate:Lcom/meizu/widget/GlowDelegate;

    if-eqz v0, :cond_0

    .line 713
    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->mDelegate:Lcom/meizu/widget/GlowDelegate;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/GlowDelegate;->setPressed(Z)V

    .line 715
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setPressed(Z)V

    .line 716
    return-void
.end method

.method public setSelected(Z)V
    .locals 2
    .param p1, "selected"    # Z

    .prologue
    .line 525
    invoke-virtual {p0}, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->isSelected()Z

    move-result v1

    if-eq v1, p1, :cond_1

    const/4 v0, 0x1

    .line 526
    .local v0, "changed":Z
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 527
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 528
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->sendAccessibilityEvent(I)V

    .line 530
    :cond_0
    return-void

    .line 525
    .end local v0    # "changed":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setShowAtBottom(Z)V
    .locals 3
    .param p1, "showAtBottom"    # Z

    .prologue
    const/4 v2, 0x0

    .line 719
    if-eqz p1, :cond_1

    .line 720
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 721
    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->mDelegate:Lcom/meizu/widget/GlowDelegate;

    if-nez v0, :cond_0

    .line 722
    new-instance v0, Lcom/meizu/widget/GlowDelegate;

    invoke-virtual {p0}, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/meizu/widget/GlowDelegate;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->mDelegate:Lcom/meizu/widget/GlowDelegate;

    .line 724
    :cond_0
    invoke-virtual {p0, v2, v2, v2, v2}, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->setPadding(IIII)V

    .line 726
    :cond_1
    return-void
.end method

.method public update()V
    .locals 15

    .prologue
    const/16 v14, 0x10

    const/16 v11, 0x8

    const/4 v13, -0x2

    const/4 v9, 0x0

    const/4 v12, 0x0

    .line 558
    iget-object v6, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->mTab:Landroid/app/ActionBar$Tab;

    .line 559
    .local v6, "tab":Landroid/app/ActionBar$Tab;
    invoke-virtual {v6}, Landroid/app/ActionBar$Tab;->getCustomView()Landroid/view/View;

    move-result-object v0

    .line 560
    .local v0, "custom":Landroid/view/View;
    if-eqz v0, :cond_4

    .line 561
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 562
    .local v1, "customParent":Landroid/view/ViewParent;
    if-eq v1, p0, :cond_1

    .line 563
    if-eqz v1, :cond_0

    check-cast v1, Landroid/view/ViewGroup;

    .end local v1    # "customParent":Landroid/view/ViewParent;
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 564
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->addView(Landroid/view/View;)V

    .line 566
    :cond_1
    iput-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->mCustomView:Landroid/view/View;

    .line 567
    iget-object v9, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 568
    :cond_2
    iget-object v9, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v9, :cond_3

    .line 569
    iget-object v9, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v9, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 570
    iget-object v9, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v9, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 629
    :cond_3
    :goto_0
    return-void

    .line 573
    :cond_4
    iget-object v10, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->mCustomView:Landroid/view/View;

    if-eqz v10, :cond_5

    .line 574
    iget-object v10, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->mCustomView:Landroid/view/View;

    invoke-virtual {p0, v10}, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->removeView(Landroid/view/View;)V

    .line 575
    iput-object v12, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->mCustomView:Landroid/view/View;

    .line 578
    :cond_5
    invoke-virtual {v6}, Landroid/app/ActionBar$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 579
    .local v3, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v6}, Landroid/app/ActionBar$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    .line 581
    .local v7, "text":Ljava/lang/CharSequence;
    if-eqz v3, :cond_b

    .line 582
    iget-object v10, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    if-nez v10, :cond_6

    .line 583
    new-instance v4, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v4, v10}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 584
    .local v4, "iconView":Landroid/widget/ImageView;
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v13, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 586
    .local v5, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iput v14, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 587
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 588
    invoke-virtual {p0, v4, v9}, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->addView(Landroid/view/View;I)V

    .line 589
    iput-object v4, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    .line 591
    .end local v4    # "iconView":Landroid/widget/ImageView;
    .end local v5    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_6
    iget-object v10, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v10, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 592
    iget-object v10, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v10, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 598
    :cond_7
    :goto_1
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_c

    const/4 v2, 0x1

    .line 599
    .local v2, "hasText":Z
    :goto_2
    if-eqz v2, :cond_d

    .line 600
    iget-object v10, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    if-nez v10, :cond_8

    .line 601
    new-instance v8, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x10102f5

    invoke-direct {v8, v10, v12, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 603
    .local v8, "textView":Landroid/widget/TextView;
    sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 604
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v13, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 606
    .restart local v5    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    iput v14, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 607
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 608
    invoke-virtual {p0, v8}, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->addView(Landroid/view/View;)V

    .line 609
    iput-object v8, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    .line 611
    .end local v5    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v8    # "textView":Landroid/widget/TextView;
    :cond_8
    iget-object v10, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 612
    iget-object v10, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 618
    :cond_9
    :goto_3
    iget-object v10, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v10, :cond_a

    .line 619
    iget-object v10, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/app/ActionBar$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 622
    :cond_a
    if-nez v2, :cond_e

    invoke-virtual {v6}, Landroid/app/ActionBar$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_e

    .line 623
    invoke-virtual {p0, p0}, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto/16 :goto_0

    .line 593
    .end local v2    # "hasText":Z
    :cond_b
    iget-object v10, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v10, :cond_7

    .line 594
    iget-object v10, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 595
    iget-object v10, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v10, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_c
    move v2, v9

    .line 598
    goto :goto_2

    .line 613
    .restart local v2    # "hasText":Z
    :cond_d
    iget-object v10, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v10, :cond_9

    .line 614
    iget-object v10, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 615
    iget-object v10, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 625
    :cond_e
    invoke-virtual {p0, v12}, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 626
    invoke-virtual {p0, v9}, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->setLongClickable(Z)V

    goto/16 :goto_0
.end method
