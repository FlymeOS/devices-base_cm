.class Landroid/media/session/MediaSession$PlayItemToken;
.super Ljava/lang/Object;
.source "MediaSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/MediaSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlayItemToken"
.end annotation


# instance fields
.field private mScope:I

.field private mUid:J

.field final synthetic this$0:Landroid/media/session/MediaSession;


# direct methods
.method public constructor <init>(Landroid/media/session/MediaSession;JI)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/session/MediaSession;
    .param p2, "uid"    # J
    .param p4, "scope"    # I

    .prologue
    .line 639
    iput-object p1, p0, Landroid/media/session/MediaSession$PlayItemToken;->this$0:Landroid/media/session/MediaSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 640
    iput-wide p2, p0, Landroid/media/session/MediaSession$PlayItemToken;->mUid:J

    .line 641
    iput p4, p0, Landroid/media/session/MediaSession$PlayItemToken;->mScope:I

    .line 639
    return-void
.end method


# virtual methods
.method public getScope()I
    .locals 1

    .prologue
    .line 644
    iget v0, p0, Landroid/media/session/MediaSession$PlayItemToken;->mScope:I

    return v0
.end method

.method public getUid()J
    .locals 2

    .prologue
    .line 647
    iget-wide v0, p0, Landroid/media/session/MediaSession$PlayItemToken;->mUid:J

    return-wide v0
.end method
