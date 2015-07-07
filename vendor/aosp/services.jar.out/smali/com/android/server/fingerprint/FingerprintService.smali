.class public Lcom/android/server/fingerprint/FingerprintService;
.super Lcom/android/server/SystemService;
.source "FingerprintService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;,
        Lcom/android/server/fingerprint/FingerprintService$TokenWatcher;,
        Lcom/android/server/fingerprint/FingerprintService$ClientData;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field public static final ENROLL_FINGERPRINT:Ljava/lang/String; = "android.permission.ENROLL_FINGERPRINT"

.field private static final MSG_NOTIFY:I = 0xa

.field private static final MS_PER_SEC:J = 0x3e8L

.field private static final STATE_ENROLLING:I = 0x2

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_LISTENING:I = 0x1

.field private static final STATE_REMOVING:I = 0x3

.field public static final USE_FINGERPRINT:Ljava/lang/String; = "android.permission.USE_FINGERPRINT"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mClients:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/fingerprint/FingerprintService$ClientData;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 52
    const-string v0, "FingerprintService"

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->TAG:Ljava/lang/String;

    .line 54
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mClients:Landroid/util/ArrayMap;

    .line 58
    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$1;

    invoke-direct {v0, p0}, Lcom/android/server/fingerprint/FingerprintService$1;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    .line 115
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    .line 116
    invoke-virtual {p0, p0}, Lcom/android/server/fingerprint/FingerprintService;->nativeInit(Lcom/android/server/fingerprint/FingerprintService;)V

    .line 117
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/fingerprint/FingerprintService;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mClients:Landroid/util/ArrayMap;

    return-object v0
.end method


# virtual methods
.method addListener(Landroid/os/IBinder;Landroid/service/fingerprint/IFingerprintServiceReceiver;I)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "receiver"    # Landroid/service/fingerprint/IFingerprintServiceReceiver;
    .param p3, "userId"    # I

    .prologue
    .line 255
    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startListening("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 257
    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$ClientData;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/server/fingerprint/FingerprintService$ClientData;-><init>(Lcom/android/server/fingerprint/FingerprintService$1;)V

    .line 258
    .local v0, "clientData":Lcom/android/server/fingerprint/FingerprintService$ClientData;
    const/4 v2, 0x1

    iput v2, v0, Lcom/android/server/fingerprint/FingerprintService$ClientData;->state:I

    .line 259
    iput-object p2, v0, Lcom/android/server/fingerprint/FingerprintService$ClientData;->receiver:Landroid/service/fingerprint/IFingerprintServiceReceiver;

    .line 260
    iput p3, v0, Lcom/android/server/fingerprint/FingerprintService$ClientData;->userId:I

    .line 261
    new-instance v2, Lcom/android/server/fingerprint/FingerprintService$TokenWatcher;

    invoke-direct {v2, p0, p1}, Lcom/android/server/fingerprint/FingerprintService$TokenWatcher;-><init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/os/IBinder;)V

    iput-object v2, v0, Lcom/android/server/fingerprint/FingerprintService$ClientData;->tokenWatcher:Lcom/android/server/fingerprint/FingerprintService$TokenWatcher;

    .line 263
    :try_start_0
    iget-object v2, v0, Lcom/android/server/fingerprint/FingerprintService$ClientData;->tokenWatcher:Lcom/android/server/fingerprint/FingerprintService$TokenWatcher;

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 264
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    .end local v0    # "clientData":Lcom/android/server/fingerprint/FingerprintService$ClientData;
    :goto_0
    return-void

    .line 265
    .restart local v0    # "clientData":Lcom/android/server/fingerprint/FingerprintService$ClientData;
    :catch_0
    move-exception v1

    .line 266
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "FingerprintService"

    const-string v3, "caught remote exception in linkToDeath: "

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 269
    .end local v0    # "clientData":Lcom/android/server/fingerprint/FingerprintService$ClientData;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "listener already registered for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method checkPermission(Ljava/lang/String;)V
    .locals 0
    .param p1, "permisison"    # Ljava/lang/String;

    .prologue
    .line 287
    return-void
.end method

.method handleNotify(III)V
    .locals 10
    .param p1, "msg"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .prologue
    .line 134
    const-string v7, "FingerprintService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleNotify(msg="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", arg1="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", arg2="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget-object v7, p0, Lcom/android/server/fingerprint/FingerprintService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v5, v7, :cond_6

    .line 136
    iget-object v7, p0, Lcom/android/server/fingerprint/FingerprintService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/fingerprint/FingerprintService$ClientData;

    .line 137
    .local v1, "clientData":Lcom/android/server/fingerprint/FingerprintService$ClientData;
    if-eqz v1, :cond_0

    iget-object v7, v1, Lcom/android/server/fingerprint/FingerprintService$ClientData;->receiver:Landroid/service/fingerprint/IFingerprintServiceReceiver;

    if-nez v7, :cond_2

    .line 138
    :cond_0
    const-string v7, "FingerprintService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "clientData at "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is invalid!!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 141
    :cond_2
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 143
    :pswitch_1
    move v3, p2

    .line 145
    .local v3, "error":I
    :try_start_0
    iget-object v7, v1, Lcom/android/server/fingerprint/FingerprintService$ClientData;->receiver:Landroid/service/fingerprint/IFingerprintServiceReceiver;

    invoke-interface {v7, v3}, Landroid/service/fingerprint/IFingerprintServiceReceiver;->onError(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 146
    :catch_0
    move-exception v2

    .line 147
    .local v2, "e":Landroid/os/RemoteException;
    const-string v7, "FingerprintService"

    const-string v8, "can\'t send message to client. Did it die?"

    invoke-static {v7, v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 148
    iget-object v7, p0, Lcom/android/server/fingerprint/FingerprintService;->mClients:Landroid/util/ArrayMap;

    iget-object v8, p0, Lcom/android/server/fingerprint/FingerprintService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v8, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 153
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "error":I
    :pswitch_2
    move v0, p2

    .line 155
    .local v0, "acquireInfo":I
    :try_start_1
    iget-object v7, v1, Lcom/android/server/fingerprint/FingerprintService$ClientData;->receiver:Landroid/service/fingerprint/IFingerprintServiceReceiver;

    invoke-interface {v7, v0}, Landroid/service/fingerprint/IFingerprintServiceReceiver;->onAcquired(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 156
    :catch_1
    move-exception v2

    .line 157
    .restart local v2    # "e":Landroid/os/RemoteException;
    const-string v7, "FingerprintService"

    const-string v8, "can\'t send message to client. Did it die?"

    invoke-static {v7, v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 158
    iget-object v7, p0, Lcom/android/server/fingerprint/FingerprintService;->mClients:Landroid/util/ArrayMap;

    iget-object v8, p0, Lcom/android/server/fingerprint/FingerprintService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v8, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 163
    .end local v0    # "acquireInfo":I
    .end local v2    # "e":Landroid/os/RemoteException;
    :pswitch_3
    move v4, p2

    .line 165
    .local v4, "fingerId":I
    :try_start_2
    iget-object v7, v1, Lcom/android/server/fingerprint/FingerprintService$ClientData;->receiver:Landroid/service/fingerprint/IFingerprintServiceReceiver;

    invoke-interface {v7, v4}, Landroid/service/fingerprint/IFingerprintServiceReceiver;->onProcessed(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 166
    :catch_2
    move-exception v2

    .line 167
    .restart local v2    # "e":Landroid/os/RemoteException;
    const-string v7, "FingerprintService"

    const-string v8, "can\'t send message to client. Did it die?"

    invoke-static {v7, v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 168
    iget-object v7, p0, Lcom/android/server/fingerprint/FingerprintService;->mClients:Landroid/util/ArrayMap;

    iget-object v8, p0, Lcom/android/server/fingerprint/FingerprintService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v8, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 173
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v4    # "fingerId":I
    :pswitch_4
    move v4, p2

    .line 174
    .restart local v4    # "fingerId":I
    move v6, p3

    .line 175
    .local v6, "remaining":I
    iget v7, v1, Lcom/android/server/fingerprint/FingerprintService$ClientData;->state:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    .line 178
    :try_start_3
    iget-object v7, v1, Lcom/android/server/fingerprint/FingerprintService$ClientData;->receiver:Landroid/service/fingerprint/IFingerprintServiceReceiver;

    invoke-interface {v7, v4, v6}, Landroid/service/fingerprint/IFingerprintServiceReceiver;->onEnrollResult(II)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 185
    :goto_2
    if-nez v6, :cond_1

    .line 186
    iget-object v7, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget v8, v1, Lcom/android/server/fingerprint/FingerprintService$ClientData;->userId:I

    invoke-static {v4, v7, v8}, Landroid/service/fingerprint/FingerprintUtils;->addFingerprintIdForUser(ILandroid/content/ContentResolver;I)V

    .line 188
    const/4 v7, 0x0

    iput v7, v1, Lcom/android/server/fingerprint/FingerprintService$ClientData;->state:I

    goto :goto_1

    .line 179
    :catch_3
    move-exception v2

    .line 180
    .restart local v2    # "e":Landroid/os/RemoteException;
    const-string v7, "FingerprintService"

    const-string v8, "can\'t send message to client. Did it die?"

    invoke-static {v7, v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 181
    iget-object v7, p0, Lcom/android/server/fingerprint/FingerprintService;->mClients:Landroid/util/ArrayMap;

    iget-object v8, p0, Lcom/android/server/fingerprint/FingerprintService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v8, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 191
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_3
    const-string v7, "FingerprintService"

    const-string v8, "Client not enrolling"

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 197
    .end local v4    # "fingerId":I
    .end local v6    # "remaining":I
    :pswitch_5
    move v4, p2

    .line 198
    .restart local v4    # "fingerId":I
    if-nez v4, :cond_4

    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "Got illegal id from HAL"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 199
    :cond_4
    iget-object v7, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget v8, v1, Lcom/android/server/fingerprint/FingerprintService$ClientData;->userId:I

    invoke-static {v4, v7, v8}, Landroid/service/fingerprint/FingerprintUtils;->removeFingerprintIdForUser(ILandroid/content/ContentResolver;I)Z

    .line 201
    iget-object v7, v1, Lcom/android/server/fingerprint/FingerprintService$ClientData;->receiver:Landroid/service/fingerprint/IFingerprintServiceReceiver;

    if-eqz v7, :cond_5

    .line 203
    :try_start_4
    iget-object v7, v1, Lcom/android/server/fingerprint/FingerprintService$ClientData;->receiver:Landroid/service/fingerprint/IFingerprintServiceReceiver;

    invoke-interface {v7, v4}, Landroid/service/fingerprint/IFingerprintServiceReceiver;->onRemoved(I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    .line 209
    :cond_5
    :goto_3
    const/4 v7, 0x1

    iput v7, v1, Lcom/android/server/fingerprint/FingerprintService$ClientData;->state:I

    goto/16 :goto_1

    .line 204
    :catch_4
    move-exception v2

    .line 205
    .restart local v2    # "e":Landroid/os/RemoteException;
    const-string v7, "FingerprintService"

    const-string v8, "can\'t send message to client. Did it die?"

    invoke-static {v7, v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 206
    iget-object v7, p0, Lcom/android/server/fingerprint/FingerprintService;->mClients:Landroid/util/ArrayMap;

    iget-object v8, p0, Lcom/android/server/fingerprint/FingerprintService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v8, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 214
    .end local v1    # "clientData":Lcom/android/server/fingerprint/FingerprintService$ClientData;
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v4    # "fingerId":I
    :cond_6
    return-void

    .line 141
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method native nativeCloseHal()I
.end method

.method native nativeEnroll(I)I
.end method

.method native nativeEnrollCancel()I
.end method

.method native nativeInit(Lcom/android/server/fingerprint/FingerprintService;)V
.end method

.method native nativeOpenHal()I
.end method

.method native nativeRemove(I)I
.end method

.method notify(III)V
    .locals 3
    .param p1, "msg"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 131
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 324
    const-string v0, "fingerprint"

    new-instance v1, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;-><init>(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/FingerprintService$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 325
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->nativeOpenHal()I

    .line 326
    return-void
.end method

.method removeListener(Landroid/os/IBinder;I)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "userId"    # I

    .prologue
    .line 274
    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopListening("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/fingerprint/FingerprintService$ClientData;

    .line 276
    .local v0, "clientData":Lcom/android/server/fingerprint/FingerprintService$ClientData;
    if-eqz v0, :cond_0

    .line 277
    iget-object v1, v0, Lcom/android/server/fingerprint/FingerprintService$ClientData;->tokenWatcher:Lcom/android/server/fingerprint/FingerprintService$TokenWatcher;

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 278
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    :goto_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    return-void

    .line 280
    :cond_0
    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "listener not registered: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method startEnroll(Landroid/os/IBinder;JI)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "timeout"    # J
    .param p4, "userId"    # I

    .prologue
    .line 217
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/fingerprint/FingerprintService$ClientData;

    .line 218
    .local v0, "clientData":Lcom/android/server/fingerprint/FingerprintService$ClientData;
    if-eqz v0, :cond_1

    .line 219
    iget v1, v0, Lcom/android/server/fingerprint/FingerprintService$ClientData;->userId:I

    if-eq v1, p4, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Bad user"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 220
    :cond_0
    const/4 v1, 0x2

    iput v1, v0, Lcom/android/server/fingerprint/FingerprintService$ClientData;->state:I

    .line 221
    const-wide/16 v2, 0x3e8

    div-long v2, p2, v2

    long-to-int v1, v2

    invoke-virtual {p0, v1}, Lcom/android/server/fingerprint/FingerprintService;->nativeEnroll(I)I

    .line 225
    :goto_0
    return-void

    .line 223
    :cond_1
    const-string v1, "FingerprintService"

    const-string v2, "enroll(): No listener registered"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method startEnrollCancel(Landroid/os/IBinder;I)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "userId"    # I

    .prologue
    .line 228
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/fingerprint/FingerprintService$ClientData;

    .line 229
    .local v0, "clientData":Lcom/android/server/fingerprint/FingerprintService$ClientData;
    if-eqz v0, :cond_1

    .line 230
    iget v1, v0, Lcom/android/server/fingerprint/FingerprintService$ClientData;->userId:I

    if-eq v1, p2, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Bad user"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 231
    :cond_0
    const/4 v1, 0x1

    iput v1, v0, Lcom/android/server/fingerprint/FingerprintService$ClientData;->state:I

    .line 232
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->nativeEnrollCancel()I

    .line 236
    :goto_0
    return-void

    .line 234
    :cond_1
    const-string v1, "FingerprintService"

    const-string v2, "enrollCancel(): No listener registered"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method startRemove(Landroid/os/IBinder;II)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "fingerId"    # I
    .param p3, "userId"    # I

    .prologue
    .line 240
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/fingerprint/FingerprintService$ClientData;

    .line 241
    .local v0, "clientData":Lcom/android/server/fingerprint/FingerprintService$ClientData;
    if-eqz v0, :cond_2

    .line 242
    iget v2, v0, Lcom/android/server/fingerprint/FingerprintService$ClientData;->userId:I

    if-eq v2, p3, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Bad user"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 243
    :cond_0
    const/4 v2, 0x3

    iput v2, v0, Lcom/android/server/fingerprint/FingerprintService$ClientData;->state:I

    .line 245
    invoke-virtual {p0, p2}, Lcom/android/server/fingerprint/FingerprintService;->nativeRemove(I)I

    move-result v1

    .line 246
    .local v1, "result":I
    if-eqz v1, :cond_1

    .line 247
    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error removing fingerprint with id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    .end local v1    # "result":I
    :cond_1
    :goto_0
    return-void

    .line 250
    :cond_2
    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remove("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): No listener registered"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
