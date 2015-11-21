.class Landroid/telecom/Connection$FailureSignalingConnection;
.super Landroid/telecom/Connection;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FailureSignalingConnection"
.end annotation


# instance fields
.field private mImmutable:Z


# direct methods
.method public constructor <init>(Landroid/telecom/DisconnectCause;)V
    .locals 1
    .param p1, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    .prologue
    .line 1573
    invoke-direct {p0}, Landroid/telecom/Connection;-><init>()V

    .line 1572
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telecom/Connection$FailureSignalingConnection;->mImmutable:Z

    .line 1574
    invoke-virtual {p0, p1}, Landroid/telecom/Connection$FailureSignalingConnection;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    .line 1575
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telecom/Connection$FailureSignalingConnection;->mImmutable:Z

    .line 1576
    return-void
.end method


# virtual methods
.method public checkImmutable()V
    .locals 2

    .prologue
    .line 1579
    iget-boolean v0, p0, Landroid/telecom/Connection$FailureSignalingConnection;->mImmutable:Z

    if-eqz v0, :cond_0

    .line 1580
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Connection is immutable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1582
    :cond_0
    return-void
.end method
