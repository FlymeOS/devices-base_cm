.class public Landroid/media/CueHelper$CueTrackInfo;
.super Ljava/lang/Object;
.source "CueHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/CueHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CueTrackInfo"
.end annotation


# instance fields
.field public endTime:J

.field public musicFilePath:Ljava/lang/String;

.field public startTime:J

.field final synthetic this$0:Landroid/media/CueHelper;


# direct methods
.method public constructor <init>(Landroid/media/CueHelper;)V
    .locals 2
    .param p1, "this$0"    # Landroid/media/CueHelper;

    .prologue
    const-wide/16 v0, 0x0

    .line 20
    iput-object p1, p0, Landroid/media/CueHelper$CueTrackInfo;->this$0:Landroid/media/CueHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-wide v0, p0, Landroid/media/CueHelper$CueTrackInfo;->startTime:J

    .line 23
    iput-wide v0, p0, Landroid/media/CueHelper$CueTrackInfo;->endTime:J

    .line 20
    return-void
.end method
