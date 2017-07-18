.class public abstract Landroid/net/BaseDhcpStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "BaseDhcpStateMachine.java"


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 30
    return-void
.end method


# virtual methods
.method public abstract doQuit()V
.end method

.method public abstract registerForPreDhcpNotification()V
.end method
