.class public Lcom/android/server/MzInputMethodManagerService;
.super Lcom/android/server/InputMethodManagerService;
.source "MzInputMethodManagerService.java"

# interfaces
.implements Lcom/android/internal/view/MzIInputMethodManager;


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.view.IInputMethodManager"

.field static final MSG_MZ_FINISH_INPUT:I = 0x1392

.field static final MSG_MZ_VIS_CHANGED:I = 0x1388

.field private static final TRANSACTION_mzIsShown:I = 0x65

.field private static final TRANSACTION_mzSetFlags:I = 0x66


# instance fields
.field private mLastInputShown:Z

.field private mMeizuFlags:I

.field private mMeizuLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManager"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V

    .line 42
    invoke-direct {p0}, Lcom/android/server/MzInputMethodManagerService;->initParams()V

    .line 43
    return-void
.end method

.method private finishInputInternal(Lcom/android/internal/view/IInputMethodClient;)V
    .locals 3
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;

    .prologue
    .line 120
    iget-object v1, p0, Lcom/android/server/MzInputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/android/server/MzInputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/MzInputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v0}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v0, v2, :cond_0

    .line 123
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/android/server/MzInputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    .line 125
    :cond_0
    monitor-exit v1

    .line 126
    return-void

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private initParams()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    iput v1, p0, Lcom/android/server/MzInputMethodManagerService;->mMeizuFlags:I

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/MzInputMethodManagerService;->mMeizuLock:Ljava/lang/Object;

    .line 48
    iput-boolean v1, p0, Lcom/android/server/MzInputMethodManagerService;->mLastInputShown:Z

    .line 49
    return-void
.end method

.method private selectMzInputAsDefaultIMELocked()V
    .locals 3

    .prologue
    .line 187
    iget-object v1, p0, Lcom/android/server/MzInputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    const-string v2, "com.baidu.input_mz/com.meizu.input.MzInputService"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 188
    .local v0, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v0, :cond_0

    .line 189
    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/MzInputMethodManagerService;->setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V

    .line 191
    :cond_0
    return-void
.end method

.method private setInputShownLocked()V
    .locals 5

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/android/server/MzInputMethodManagerService;->mLastInputShown:Z

    iget-boolean v1, p0, Lcom/android/server/MzInputMethodManagerService;->mInputShown:Z

    if-eq v0, v1, :cond_0

    .line 172
    iget-boolean v0, p0, Lcom/android/server/MzInputMethodManagerService;->mInputShown:Z

    iput-boolean v0, p0, Lcom/android/server/MzInputMethodManagerService;->mLastInputShown:Z

    .line 173
    iget-object v0, p0, Lcom/android/server/MzInputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/server/MzInputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v1, p0, Lcom/android/server/MzInputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x1388

    iget-boolean v3, p0, Lcom/android/server/MzInputMethodManagerService;->mInputShown:Z

    iget-object v4, p0, Lcom/android/server/MzInputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/os/HandlerCaller;->obtainMessageBO(IZLjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/MzInputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 178
    :cond_0
    return-void
.end method


# virtual methods
.method public finishInput(Lcom/android/internal/view/IInputMethodClient;)V
    .locals 5
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;

    .prologue
    .line 130
    invoke-super {p0, p1}, Lcom/android/server/InputMethodManagerService;->finishInput(Lcom/android/internal/view/IInputMethodClient;)V

    .line 132
    invoke-virtual {p0}, Lcom/android/server/MzInputMethodManagerService;->calledFromValidUser()Z

    move-result v2

    if-nez v2, :cond_0

    .line 148
    :goto_0
    return-void

    .line 135
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 137
    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MzInputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 138
    :try_start_1
    iget-object v2, p0, Lcom/android/server/MzInputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/android/server/MzInputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v2, v2, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v2}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v2, v4, :cond_1

    .line 142
    iget-object v2, p0, Lcom/android/server/MzInputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v4, 0x1392

    invoke-virtual {v2, v4, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 144
    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 144
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 146
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    .line 95
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 116
    invoke-super {p0, p1}, Lcom/android/server/InputMethodManagerService;->handleMessage(Landroid/os/Message;)Z

    move-result v4

    :goto_0
    return v4

    .line 98
    :sswitch_0
    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/InputMethodManagerService$ClientState;

    .line 102
    .local v0, "clientState":Lcom/android/server/InputMethodManagerService$ClientState;
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_0

    const/4 v2, -0x7

    .line 103
    .local v2, "sequence":I
    :goto_1
    iget-object v3, v0, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v3, v2}, Lcom/android/internal/view/IInputMethodClient;->onUnbindMethod(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 104
    .end local v0    # "clientState":Lcom/android/server/InputMethodManagerService$ClientState;
    .end local v2    # "sequence":I
    :catch_0
    move-exception v1

    .line 105
    .local v1, "e":Landroid/os/RemoteException;
    const-string v5, "InputMethodManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got RemoteException sending onInputShownChanged("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_1

    move v3, v4

    :goto_2
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ") notification to pid "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/InputMethodManagerService$ClientState;

    iget v3, v3, Lcom/android/server/InputMethodManagerService$ClientState;->pid:I

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " uid "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/InputMethodManagerService$ClientState;

    iget v3, v3, Lcom/android/server/InputMethodManagerService$ClientState;->uid:I

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 102
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "clientState":Lcom/android/server/InputMethodManagerService$ClientState;
    :cond_0
    const/16 v2, -0x9

    goto :goto_1

    .line 105
    .end local v0    # "clientState":Lcom/android/server/InputMethodManagerService$ClientState;
    .restart local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    .line 112
    .end local v1    # "e":Landroid/os/RemoteException;
    :sswitch_1
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/view/IInputMethodClient;

    invoke-direct {p0, v3}, Lcom/android/server/MzInputMethodManagerService;->finishInputInternal(Lcom/android/internal/view/IInputMethodClient;)V

    goto :goto_0

    .line 95
    :sswitch_data_0
    .sparse-switch
        0x1388 -> :sswitch_0
        0x1392 -> :sswitch_1
    .end sparse-switch
.end method

.method hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z
    .locals 1
    .param p1, "flags"    # I
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;

    .prologue
    .line 152
    invoke-super {p0, p1, p2}, Lcom/android/server/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    move-result v0

    .line 153
    .local v0, "res":Z
    invoke-direct {p0}, Lcom/android/server/MzInputMethodManagerService;->setInputShownLocked()V

    .line 154
    return v0
.end method

.method public mzIsShown()Z
    .locals 2

    .prologue
    .line 79
    iget-object v1, p0, Lcom/android/server/MzInputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 80
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/MzInputMethodManagerService;->mInputShown:Z

    monitor-exit v1

    return v0

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public mzSetFlags(II)I
    .locals 4
    .param p1, "flags"    # I
    .param p2, "mask"    # I

    .prologue
    .line 86
    iget-object v2, p0, Lcom/android/server/MzInputMethodManagerService;->mMeizuLock:Ljava/lang/Object;

    monitor-enter v2

    .line 87
    :try_start_0
    iget v0, p0, Lcom/android/server/MzInputMethodManagerService;->mMeizuFlags:I

    .line 88
    .local v0, "old":I
    iget v1, p0, Lcom/android/server/MzInputMethodManagerService;->mMeizuFlags:I

    xor-int/lit8 v3, p2, -0x1

    and-int/2addr v1, v3

    and-int v3, p1, p2

    or-int/2addr v1, v3

    iput v1, p0, Lcom/android/server/MzInputMethodManagerService;->mMeizuFlags:I

    .line 89
    monitor-exit v2

    return v0

    .line 90
    .end local v0    # "old":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 166
    invoke-super {p0, p1}, Lcom/android/server/InputMethodManagerService;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 167
    invoke-direct {p0}, Lcom/android/server/MzInputMethodManagerService;->setInputShownLocked()V

    .line 168
    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 53
    packed-switch p1, :pswitch_data_0

    .line 74
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/InputMethodManagerService;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 55
    :pswitch_0
    const-string v3, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/android/server/MzInputMethodManagerService;->mzIsShown()Z

    move-result v2

    .line 57
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    if-eqz v2, :cond_0

    move v3, v4

    :goto_1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 62
    .end local v2    # "_result":Z
    :pswitch_1
    const-string v3, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 66
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 67
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/android/server/MzInputMethodManagerService;->mzSetFlags(II)I

    move-result v2

    .line 68
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 53
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected resetDefaultImeLocked(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 182
    invoke-super {p0, p1}, Lcom/android/server/InputMethodManagerService;->resetDefaultImeLocked(Landroid/content/Context;)V

    .line 183
    invoke-direct {p0}, Lcom/android/server/MzInputMethodManagerService;->selectMzInputAsDefaultIMELocked()V

    .line 184
    return-void
.end method

.method showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z
    .locals 1
    .param p1, "flags"    # I
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;

    .prologue
    .line 159
    invoke-super {p0, p1, p2}, Lcom/android/server/InputMethodManagerService;->showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    move-result v0

    .line 160
    .local v0, "res":Z
    invoke-direct {p0}, Lcom/android/server/MzInputMethodManagerService;->setInputShownLocked()V

    .line 161
    return v0
.end method
