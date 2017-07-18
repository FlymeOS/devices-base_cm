.class public Landroid/media/ClosedCaptionRenderer;
.super Landroid/media/SubtitleController$Renderer;
.source "ClosedCaptionRenderer.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mRenderingWidget:Landroid/media/ClosedCaptionWidget;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/media/SubtitleController$Renderer;-><init>()V

    .line 58
    iput-object p1, p0, Landroid/media/ClosedCaptionRenderer;->mContext:Landroid/content/Context;

    .line 57
    return-void
.end method


# virtual methods
.method public createTrack(Landroid/media/MediaFormat;)Landroid/media/SubtitleTrack;
    .locals 2
    .param p1, "format"    # Landroid/media/MediaFormat;

    .prologue
    .line 72
    iget-object v0, p0, Landroid/media/ClosedCaptionRenderer;->mRenderingWidget:Landroid/media/ClosedCaptionWidget;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Landroid/media/ClosedCaptionWidget;

    iget-object v1, p0, Landroid/media/ClosedCaptionRenderer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/media/ClosedCaptionWidget;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/media/ClosedCaptionRenderer;->mRenderingWidget:Landroid/media/ClosedCaptionWidget;

    .line 75
    :cond_0
    new-instance v0, Landroid/media/ClosedCaptionTrack;

    iget-object v1, p0, Landroid/media/ClosedCaptionRenderer;->mRenderingWidget:Landroid/media/ClosedCaptionWidget;

    invoke-direct {v0, v1, p1}, Landroid/media/ClosedCaptionTrack;-><init>(Landroid/media/ClosedCaptionWidget;Landroid/media/MediaFormat;)V

    return-object v0
.end method

.method public supports(Landroid/media/MediaFormat;)Z
    .locals 2
    .param p1, "format"    # Landroid/media/MediaFormat;

    .prologue
    .line 63
    const-string/jumbo v0, "mime"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    const-string/jumbo v0, "mime"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    const-string/jumbo v1, "text/cea-608"

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 67
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
