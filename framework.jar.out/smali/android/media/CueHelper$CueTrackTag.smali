.class public Landroid/media/CueHelper$CueTrackTag;
.super Ljava/lang/Object;
.source "CueHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/CueHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CueTrackTag"
.end annotation


# instance fields
.field public album:Ljava/lang/String;

.field public artist:Ljava/lang/String;

.field final synthetic this$0:Landroid/media/CueHelper;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/media/CueHelper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/CueHelper;

    .prologue
    .line 27
    iput-object p1, p0, Landroid/media/CueHelper$CueTrackTag;->this$0:Landroid/media/CueHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
