.class public final Landroid/media/MediaDrm$CryptoSession;
.super Ljava/lang/Object;
.source "MediaDrm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaDrm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CryptoSession"
.end annotation


# instance fields
.field private mDrm:Landroid/media/MediaDrm;

.field private mSessionId:[B

.field final synthetic this$0:Landroid/media/MediaDrm;


# direct methods
.method constructor <init>(Landroid/media/MediaDrm;Landroid/media/MediaDrm;[BLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/MediaDrm;
    .param p2, "drm"    # Landroid/media/MediaDrm;
    .param p3, "sessionId"    # [B
    .param p4, "cipherAlgorithm"    # Ljava/lang/String;
    .param p5, "macAlgorithm"    # Ljava/lang/String;

    .prologue
    .line 1088
    iput-object p1, p0, Landroid/media/MediaDrm$CryptoSession;->this$0:Landroid/media/MediaDrm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1091
    iput-object p3, p0, Landroid/media/MediaDrm$CryptoSession;->mSessionId:[B

    .line 1092
    iput-object p2, p0, Landroid/media/MediaDrm$CryptoSession;->mDrm:Landroid/media/MediaDrm;

    .line 1093
    invoke-static {p2, p3, p4}, Landroid/media/MediaDrm;->-wrap5(Landroid/media/MediaDrm;[BLjava/lang/String;)V

    .line 1094
    invoke-static {p2, p3, p5}, Landroid/media/MediaDrm;->-wrap6(Landroid/media/MediaDrm;[BLjava/lang/String;)V

    .line 1089
    return-void
.end method


# virtual methods
.method public decrypt([B[B[B)[B
    .locals 2
    .param p1, "keyid"    # [B
    .param p2, "input"    # [B
    .param p3, "iv"    # [B

    .prologue
    .line 1120
    iget-object v0, p0, Landroid/media/MediaDrm$CryptoSession;->mDrm:Landroid/media/MediaDrm;

    iget-object v1, p0, Landroid/media/MediaDrm$CryptoSession;->mSessionId:[B

    invoke-static {v0, v1, p1, p2, p3}, Landroid/media/MediaDrm;->-wrap1(Landroid/media/MediaDrm;[B[B[B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public encrypt([B[B[B)[B
    .locals 2
    .param p1, "keyid"    # [B
    .param p2, "input"    # [B
    .param p3, "iv"    # [B

    .prologue
    .line 1107
    iget-object v0, p0, Landroid/media/MediaDrm$CryptoSession;->mDrm:Landroid/media/MediaDrm;

    iget-object v1, p0, Landroid/media/MediaDrm$CryptoSession;->mSessionId:[B

    invoke-static {v0, v1, p1, p2, p3}, Landroid/media/MediaDrm;->-wrap2(Landroid/media/MediaDrm;[B[B[B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public sign([B[B)[B
    .locals 2
    .param p1, "keyid"    # [B
    .param p2, "message"    # [B

    .prologue
    .line 1131
    iget-object v0, p0, Landroid/media/MediaDrm$CryptoSession;->mDrm:Landroid/media/MediaDrm;

    iget-object v1, p0, Landroid/media/MediaDrm$CryptoSession;->mSessionId:[B

    invoke-static {v0, v1, p1, p2}, Landroid/media/MediaDrm;->-wrap3(Landroid/media/MediaDrm;[B[B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public verify([B[B[B)Z
    .locals 2
    .param p1, "keyid"    # [B
    .param p2, "message"    # [B
    .param p3, "signature"    # [B

    .prologue
    .line 1145
    iget-object v0, p0, Landroid/media/MediaDrm$CryptoSession;->mDrm:Landroid/media/MediaDrm;

    iget-object v1, p0, Landroid/media/MediaDrm$CryptoSession;->mSessionId:[B

    invoke-static {v0, v1, p1, p2, p3}, Landroid/media/MediaDrm;->-wrap0(Landroid/media/MediaDrm;[B[B[B[B)Z

    move-result v0

    return v0
.end method
