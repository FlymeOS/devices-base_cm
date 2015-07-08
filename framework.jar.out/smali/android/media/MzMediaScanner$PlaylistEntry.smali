.class Landroid/media/MzMediaScanner$PlaylistEntry;
.super Ljava/lang/Object;
.source "MzMediaScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MzMediaScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PlaylistEntry"
.end annotation


# instance fields
.field bestmatchid:J

.field bestmatchlevel:I

.field path:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/MzMediaScanner$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/media/MzMediaScanner$1;

    .prologue
    .line 396
    invoke-direct {p0}, Landroid/media/MzMediaScanner$PlaylistEntry;-><init>()V

    return-void
.end method
