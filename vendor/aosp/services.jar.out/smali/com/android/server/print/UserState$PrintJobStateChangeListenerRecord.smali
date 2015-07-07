.class abstract Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;
.super Ljava/lang/Object;
.source "UserState.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/print/UserState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "PrintJobStateChangeListenerRecord"
.end annotation


# instance fields
.field final appId:I

.field final listener:Landroid/print/IPrintJobStateChangeListener;

.field final synthetic this$0:Lcom/android/server/print/UserState;


# direct methods
.method public constructor <init>(Lcom/android/server/print/UserState;Landroid/print/IPrintJobStateChangeListener;I)V
    .locals 2
    .param p2, "listener"    # Landroid/print/IPrintJobStateChangeListener;
    .param p3, "appId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 935
    iput-object p1, p0, Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;->this$0:Lcom/android/server/print/UserState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 936
    iput-object p2, p0, Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;->listener:Landroid/print/IPrintJobStateChangeListener;

    .line 937
    iput p3, p0, Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;->appId:I

    .line 938
    invoke-interface {p2}, Landroid/print/IPrintJobStateChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 939
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 943
    iget-object v0, p0, Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;->listener:Landroid/print/IPrintJobStateChangeListener;

    invoke-interface {v0}, Landroid/print/IPrintJobStateChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 944
    invoke-virtual {p0}, Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;->onBinderDied()V

    .line 945
    return-void
.end method

.method public abstract onBinderDied()V
.end method
