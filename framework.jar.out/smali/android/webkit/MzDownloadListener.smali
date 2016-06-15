.class public abstract Landroid/webkit/MzDownloadListener;
.super Ljava/lang/Object;
.source "MzDownloadListener.java"

# interfaces
.implements Landroid/webkit/DownloadListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownLoadFileByPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "contentDisposition"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "contentLength"    # J

    .prologue
    .line 12
    return-void
.end method

.method public onPostReceiveData([BI)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "size"    # I

    .prologue
    .line 7
    return-void
.end method
