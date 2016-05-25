.class Landroid/media/TtmlRenderingWidget;
.super Landroid/widget/LinearLayout;
.source "TtmlRenderer.java"

# interfaces
.implements Landroid/media/SubtitleTrack$RenderingWidget;


# instance fields
.field private mListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

.field private final mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 687
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/TtmlRenderingWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 688
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 691
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/media/TtmlRenderingWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 692
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 695
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/media/TtmlRenderingWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 696
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v3, -0x1

    .line 700
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 702
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/media/TtmlRenderingWidget;->setLayerType(ILandroid/graphics/Paint;)V

    .line 704
    const-string v1, "captioning"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    .line 706
    .local v0, "captionManager":Landroid/view/accessibility/CaptioningManager;
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/media/TtmlRenderingWidget;->mTextView:Landroid/widget/TextView;

    .line 707
    iget-object v1, p0, Landroid/media/TtmlRenderingWidget;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v2

    iget v2, v2, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 708
    iget-object v1, p0, Landroid/media/TtmlRenderingWidget;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v3, v3}, Landroid/media/TtmlRenderingWidget;->addView(Landroid/view/View;II)V

    .line 709
    iget-object v1, p0, Landroid/media/TtmlRenderingWidget;->mTextView:Landroid/widget/TextView;

    const/16 v2, 0x51

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 710
    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 0

    .prologue
    .line 737
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 738
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 742
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 743
    return-void
.end method

.method public setActiveCues(Ljava/util/Vector;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Landroid/media/SubtitleTrack$Cue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 746
    .local p1, "activeCues":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/media/SubtitleTrack$Cue;>;"
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    .line 747
    .local v0, "count":I
    const-string v3, ""

    .line 748
    .local v3, "subtitleText":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 749
    invoke-virtual {p1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/TtmlCue;

    .line 750
    .local v1, "cue":Landroid/media/TtmlCue;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/media/TtmlCue;->mText:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 748
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 752
    .end local v1    # "cue":Landroid/media/TtmlCue;
    :cond_0
    iget-object v4, p0, Landroid/media/TtmlRenderingWidget;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 754
    iget-object v4, p0, Landroid/media/TtmlRenderingWidget;->mListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

    if-eqz v4, :cond_1

    .line 755
    iget-object v4, p0, Landroid/media/TtmlRenderingWidget;->mListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

    invoke-interface {v4, p0}, Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;->onChanged(Landroid/media/SubtitleTrack$RenderingWidget;)V

    .line 757
    :cond_1
    return-void
.end method

.method public setOnChangedListener(Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

    .prologue
    .line 714
    iput-object p1, p0, Landroid/media/TtmlRenderingWidget;->mListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

    .line 715
    return-void
.end method

.method public setSize(II)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const/4 v2, 0x0

    .line 719
    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 720
    .local v1, "widthSpec":I
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 722
    .local v0, "heightSpec":I
    invoke-virtual {p0, v1, v0}, Landroid/media/TtmlRenderingWidget;->measure(II)V

    .line 723
    invoke-virtual {p0, v2, v2, p1, p2}, Landroid/media/TtmlRenderingWidget;->layout(IIII)V

    .line 724
    return-void
.end method

.method public setVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 728
    if-eqz p1, :cond_0

    .line 729
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/media/TtmlRenderingWidget;->setVisibility(I)V

    .line 733
    :goto_0
    return-void

    .line 731
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/media/TtmlRenderingWidget;->setVisibility(I)V

    goto :goto_0
.end method
