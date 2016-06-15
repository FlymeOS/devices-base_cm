.class public Landroid/media/MzMediaFile$MediaFileType;
.super Ljava/lang/Object;
.source "MzMediaFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MzMediaFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaFileType"
.end annotation


# instance fields
.field public final fileType:I

.field public final mimeType:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "fileType"    # I
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    iput p1, p0, Landroid/media/MzMediaFile$MediaFileType;->fileType:I

    .line 234
    iput-object p2, p0, Landroid/media/MzMediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    .line 235
    return-void
.end method
