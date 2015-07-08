.class public interface abstract Landroid/webkit/WebChromeClient$WebViewMediaPlayerStatusListener;
.super Ljava/lang/Object;
.source "WebChromeClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebChromeClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WebViewMediaPlayerStatusListener"
.end annotation


# virtual methods
.method public abstract OnMediaInfo(I)V
.end method

.method public abstract OnPlayStateChanged()V
.end method

.method public abstract OnSeekComplete()V
.end method

.method public abstract onBufferingUpdate(I)V
.end method

.method public abstract onMediaPlayerError(I)V
.end method

.method public abstract onPlaybackComplete()V
.end method

.method public abstract onUpdateMediaMetadata()V
.end method

.method public abstract onVideoSizeChanged(II)V
.end method
