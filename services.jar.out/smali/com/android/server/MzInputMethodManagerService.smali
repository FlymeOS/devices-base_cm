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

    .line 40
    return-void
.end method

.method private finishInputInternal(Lcom/android/internal/view/IInputMethodClient;)V
    .locals 3
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;

    .prologue
    .line 117
    iget-object v1, p0, Lcom/android/server/MzInputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/android/server/MzInputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/server/MzInputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v0}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v0, v2, :cond_0

    .line 120
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/android/server/MzInputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 116
    return-void

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit v1

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
    invoke-virtual {p0}, Lcom/android/server/MzInputMethodManagerService;->setFlymeImeSwitcherNotification()V

    .line 45
    return-void
.end method

.method private selectMzInputAsDefaultIMELocked()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 183
    iget-object v1, p0, Lcom/android/server/MzInputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    const-string/jumbo v2, "com.syntellia.fleksy.keyboard/.Fleksy"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 184
    .local v0, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/internal/inputmethod/InputMethodUtils;->isBuildExtAndDefaultIME(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 185
    invoke-virtual {p0, v0, v3, v4}, Lcom/android/server/MzInputMethodManagerService;->flymeInvokeMethodSetSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V

    .line 186
    return-void

    .line 190
    :cond_0
    iget-object v1, p0, Lcom/android/server/MzInputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    const-string/jumbo v2, "com.cootek.smartinputv5/com.cootek.smartinput5.TouchPalIME"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 191
    .restart local v0    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/android/internal/inputmethod/InputMethodUtils;->isBuildExtAndDefaultIME(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 192
    invoke-virtual {p0, v0, v3, v4}, Lcom/android/server/MzInputMethodManagerService;->flymeInvokeMethodSetSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V

    .line 193
    return-void

    .line 197
    :cond_1
    iget-object v1, p0, Lcom/android/server/MzInputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    const-string/jumbo v2, "com.meizu.flyme.input/com.meizu.input.MzInputService"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 198
    .restart local v0    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/android/internal/inputmethod/InputMethodUtils;->isBuildExtAndDefaultIME(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 199
    invoke-virtual {p0, v0, v3, v4}, Lcom/android/server/MzInputMethodManagerService;->flymeInvokeMethodSetSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V

    .line 200
    return-void

    .line 181
    :cond_2
    return-void
.end method

.method private setInputShownLocked()V
    .locals 5

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/android/server/MzInputMethodManagerService;->mLastInputShown:Z

    iget-boolean v1, p0, Lcom/android/server/MzInputMethodManagerService;->mInputShown:Z

    if-eq v0, v1, :cond_0

    .line 167
    iget-boolean v0, p0, Lcom/android/server/MzInputMethodManagerService;->mInputShown:Z

    iput-boolean v0, p0, Lcom/android/server/MzInputMethodManagerService;->mLastInputShown:Z

    .line 168
    iget-object v0, p0, Lcom/android/server/MzInputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/android/server/MzInputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v1, p0, Lcom/android/server/MzInputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 170
    iget-boolean v2, p0, Lcom/android/server/MzInputMethodManagerService;->mInputShown:Z

    iget-object v3, p0, Lcom/android/server/MzInputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    const/16 v4, 0x1388

    .line 169
    invoke-virtual {v1, v4, v2, v3}, Lcom/android/internal/os/HandlerCaller;->obtainMessageBO(IZLjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/MzInputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 165
    :cond_0
    return-void
.end method


# virtual methods
.method public finishInput(Lcom/android/internal/view/IInputMethodClient;)V
    .locals 5
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;

    .prologue
    .line 127
    invoke-super {p0, p1}, Lcom/android/server/InputMethodManagerService;->finishInput(Lcom/android/internal/view/IInputMethodClient;)V

    .line 129
    invoke-virtual {p0}, Lcom/android/server/MzInputMethodManagerService;->flymeInvokeMethodCalledFromValidUser()Z

    move-result v2

    if-nez v2, :cond_0

    .line 130
    return-void

    .line 132
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 134
    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MzInputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 135
    :try_start_1
    iget-object v2, p0, Lcom/android/server/MzInputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    .line 136
    iget-object v2, p0, Lcom/android/server/MzInputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v2, v2, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v2}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v2, v4, :cond_1

    .line 137
    iget-object v2, p0, Lcom/android/server/MzInputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v4, 0x1392

    invoke-virtual {v2, v4, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 141
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 126
    return-void

    .line 134
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 140
    :catchall_1
    move-exception v2

    .line 141
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 140
    throw v2
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    .line 96
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 113
    invoke-super {p0, p1}, Lcom/android/server/InputMethodManagerService;->handleMessage(Landroid/os/Message;)Z

    move-result v3

    return v3

    .line 99
    :sswitch_0
    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/InputMethodManagerService$ClientState;

    .line 103
    .local v0, "clientState":Lcom/android/server/InputMethodManagerService$ClientState;
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_0

    const/4 v2, -0x7

    .line 104
    .local v2, "sequence":I
    :goto_0
    iget-object v3, v0, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v3, v2}, Lcom/android/internal/view/IInputMethodClient;->onUnbindMethod(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .end local v0    # "clientState":Lcom/android/server/InputMethodManagerService$ClientState;
    .end local v2    # "sequence":I
    :goto_1
    return v4

    .line 103
    .restart local v0    # "clientState":Lcom/android/server/InputMethodManagerService$ClientState;
    :cond_0
    const/16 v2, -0x9

    .restart local v2    # "sequence":I
    goto :goto_0

    .line 109
    .end local v0    # "clientState":Lcom/android/server/InputMethodManagerService$ClientState;
    .end local v2    # "sequence":I
    :sswitch_1
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/view/IInputMethodClient;

    invoke-direct {p0, v3}, Lcom/android/server/MzInputMethodManagerService;->finishInputInternal(Lcom/android/internal/view/IInputMethodClient;)V

    .line 110
    return v4

    .line 105
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_1

    .line 96
    nop

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
    .line 147
    invoke-super {p0, p1, p2}, Lcom/android/server/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    move-result v0

    .line 148
    .local v0, "res":Z
    invoke-direct {p0}, Lcom/android/server/MzInputMethodManagerService;->setInputShownLocked()V

    .line 149
    return v0
.end method

.method public mzIsShown()Z
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/server/MzInputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 81
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/MzInputMethodManagerService;->mInputShown:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 80
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public mzSetFlags(II)I
    .locals 4
    .param p1, "flags"    # I
    .param p2, "mask"    # I

    .prologue
    .line 87
    iget-object v2, p0, Lcom/android/server/MzInputMethodManagerService;->mMeizuLock:Ljava/lang/Object;

    monitor-enter v2

    .line 88
    :try_start_0
    iget v0, p0, Lcom/android/server/MzInputMethodManagerService;->mMeizuFlags:I

    .line 89
    .local v0, "old":I
    iget v1, p0, Lcom/android/server/MzInputMethodManagerService;->mMeizuFlags:I

    not-int v3, p2

    and-int/2addr v1, v3

    and-int v3, p1, p2

    or-int/2addr v1, v3

    iput v1, p0, Lcom/android/server/MzInputMethodManagerService;->mMeizuFlags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 90
    return v0

    .line 87
    .end local v0    # "old":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 161
    invoke-super {p0, p1}, Lcom/android/server/InputMethodManagerService;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 162
    invoke-direct {p0}, Lcom/android/server/MzInputMethodManagerService;->setInputShownLocked()V

    .line 160
    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
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
    const/4 v5, 0x1

    .line 54
    packed-switch p1, :pswitch_data_0

    .line 75
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/InputMethodManagerService;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    .line 56
    :pswitch_0
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/android/server/MzInputMethodManagerService;->mzIsShown()Z

    move-result v3

    .line 58
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    if-eqz v3, :cond_0

    move v4, v5

    :goto_0
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    return v5

    .line 59
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 63
    .end local v3    # "_result":Z
    :pswitch_1
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 67
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 68
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/android/server/MzInputMethodManagerService;->mzSetFlags(II)I

    move-result v2

    .line 69
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    return v5

    .line 54
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
    .line 177
    invoke-super {p0, p1}, Lcom/android/server/InputMethodManagerService;->resetDefaultImeLocked(Landroid/content/Context;)V

    .line 178
    invoke-direct {p0}, Lcom/android/server/MzInputMethodManagerService;->selectMzInputAsDefaultIMELocked()V

    .line 176
    return-void
.end method

.method showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z
    .locals 1
    .param p1, "flags"    # I
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;

    .prologue
    .line 154
    invoke-super {p0, p1, p2}, Lcom/android/server/InputMethodManagerService;->showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    move-result v0

    .line 155
    .local v0, "res":Z
    invoke-direct {p0}, Lcom/android/server/MzInputMethodManagerService;->setInputShownLocked()V

    .line 156
    return v0
.end method
