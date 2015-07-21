.class public Landroid/service/fingerprint/FingerprintManager;
.super Ljava/lang/Object;
.source "FingerprintManager.java"


# static fields
.field private static final DEBUG:Z = true

.field public static final FINGERPRINT_ACQUIRED:I = 0x1

.field public static final FINGERPRINT_ACQUIRED_GOOD:I = 0x0

.field public static final FINGERPRINT_ACQUIRED_IMAGER_DIRTY:I = 0x4

.field public static final FINGERPRINT_ACQUIRED_INSUFFICIENT:I = 0x2

.field public static final FINGERPRINT_ACQUIRED_PARTIAL:I = 0x1

.field public static final FINGERPRINT_ACQUIRED_TOO_FAST:I = 0x10

.field public static final FINGERPRINT_ACQUIRED_TOO_SLOW:I = 0x8

.field public static final FINGERPRINT_ERROR:I = -0x1

.field public static final FINGERPRINT_ERROR_CANCELED:I = 0x5

.field public static final FINGERPRINT_ERROR_HW_UNAVAILABLE:I = 0x1

.field public static final FINGERPRINT_ERROR_NO_RECEIVER:I = -0xa

.field public static final FINGERPRINT_ERROR_NO_SPACE:I = 0x4

.field public static final FINGERPRINT_ERROR_TIMEOUT:I = 0x3

.field public static final FINGERPRINT_ERROR_UNABLE_TO_PROCESS:I = 0x2

.field public static final FINGERPRINT_ERROR_UNABLE_TO_REMOVE:I = 0x6

.field public static final FINGERPRINT_PROCESSED:I = 0x2

.field public static final FINGERPRINT_TEMPLATE_ENROLLING:I = 0x3

.field public static final FINGERPRINT_TEMPLATE_REMOVED:I = 0x4

.field private static final MSG_ACQUIRED:I = 0x65

.field private static final MSG_ENROLL_RESULT:I = 0x64

.field private static final MSG_ERROR:I = 0x67

.field private static final MSG_PROCESSED:I = 0x66

.field private static final MSG_REMOVED:I = 0x68

.field private static final MSG_STATE_CHANGE:I = 0x69

.field public static final STATE_AUTHENTICATING:I = 0x1

.field public static final STATE_ENROLLING:I = 0x2

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_UNKNOWN:I = -0x1

.field private static final TAG:Ljava/lang/String; = "FingerprintManager"


# instance fields
.field private mClientReceiver:Landroid/service/fingerprint/FingerprintManagerReceiver;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mService:Landroid/service/fingerprint/IFingerprintService;

.field private mServiceReceiver:Landroid/service/fingerprint/IFingerprintServiceReceiver;

.field private mToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/service/fingerprint/IFingerprintService;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/service/fingerprint/IFingerprintService;

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/service/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    .line 88
    new-instance v0, Landroid/service/fingerprint/FingerprintManager$1;

    invoke-direct {v0, p0}, Landroid/service/fingerprint/FingerprintManager$1;-><init>(Landroid/service/fingerprint/FingerprintManager;)V

    iput-object v0, p0, Landroid/service/fingerprint/FingerprintManager;->mHandler:Landroid/os/Handler;

    .line 126
    new-instance v0, Landroid/service/fingerprint/FingerprintManager$2;

    invoke-direct {v0, p0}, Landroid/service/fingerprint/FingerprintManager$2;-><init>(Landroid/service/fingerprint/FingerprintManager;)V

    iput-object v0, p0, Landroid/service/fingerprint/FingerprintManager;->mServiceReceiver:Landroid/service/fingerprint/IFingerprintServiceReceiver;

    .line 119
    iput-object p1, p0, Landroid/service/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 120
    iput-object p2, p0, Landroid/service/fingerprint/FingerprintManager;->mService:Landroid/service/fingerprint/IFingerprintService;

    .line 121
    iget-object v0, p0, Landroid/service/fingerprint/FingerprintManager;->mService:Landroid/service/fingerprint/IFingerprintService;

    if-nez v0, :cond_0

    .line 122
    const-string v0, "FingerprintManager"

    const-string v1, "FingerprintManagerService was null"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_0
    return-void
.end method

.method static synthetic access$000(Landroid/service/fingerprint/FingerprintManager;)Landroid/service/fingerprint/FingerprintManagerReceiver;
    .locals 1
    .param p0, "x0"    # Landroid/service/fingerprint/FingerprintManager;

    .prologue
    .line 41
    iget-object v0, p0, Landroid/service/fingerprint/FingerprintManager;->mClientReceiver:Landroid/service/fingerprint/FingerprintManagerReceiver;

    return-object v0
.end method

.method static synthetic access$100(Landroid/service/fingerprint/FingerprintManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Landroid/service/fingerprint/FingerprintManager;

    .prologue
    .line 41
    iget-object v0, p0, Landroid/service/fingerprint/FingerprintManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getCurrentUserId()I
    .locals 1

    .prologue
    .line 277
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    return v0
.end method

.method private sendError(III)V
    .locals 1
    .param p1, "msg"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .prologue
    .line 341
    iget-object v0, p0, Landroid/service/fingerprint/FingerprintManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 342
    return-void
.end method


# virtual methods
.method public authenticate()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 171
    iget-object v1, p0, Landroid/service/fingerprint/FingerprintManager;->mServiceReceiver:Landroid/service/fingerprint/IFingerprintServiceReceiver;

    if-nez v1, :cond_1

    .line 172
    const/16 v1, -0xa

    invoke-direct {p0, v1, v4, v4}, Landroid/service/fingerprint/FingerprintManager;->sendError(III)V

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    iget-object v1, p0, Landroid/service/fingerprint/FingerprintManager;->mService:Landroid/service/fingerprint/IFingerprintService;

    if-eqz v1, :cond_0

    .line 176
    :try_start_0
    iget-object v1, p0, Landroid/service/fingerprint/FingerprintManager;->mService:Landroid/service/fingerprint/IFingerprintService;

    iget-object v2, p0, Landroid/service/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    invoke-direct {p0}, Landroid/service/fingerprint/FingerprintManager;->getCurrentUserId()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/service/fingerprint/IFingerprintService;->authenticate(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintManager"

    const-string v2, "Remote exception while enrolling: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 179
    const/4 v1, 0x1

    invoke-direct {p0, v1, v4, v4}, Landroid/service/fingerprint/FingerprintManager;->sendError(III)V

    goto :goto_0
.end method

.method public cancel()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 298
    iget-object v1, p0, Landroid/service/fingerprint/FingerprintManager;->mServiceReceiver:Landroid/service/fingerprint/IFingerprintServiceReceiver;

    if-nez v1, :cond_0

    .line 299
    const/16 v1, -0xa

    invoke-direct {p0, v1, v4, v4}, Landroid/service/fingerprint/FingerprintManager;->sendError(III)V

    .line 312
    :goto_0
    return-void

    .line 302
    :cond_0
    iget-object v1, p0, Landroid/service/fingerprint/FingerprintManager;->mService:Landroid/service/fingerprint/IFingerprintService;

    if-eqz v1, :cond_1

    .line 304
    :try_start_0
    iget-object v1, p0, Landroid/service/fingerprint/FingerprintManager;->mService:Landroid/service/fingerprint/IFingerprintService;

    iget-object v2, p0, Landroid/service/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    invoke-direct {p0}, Landroid/service/fingerprint/FingerprintManager;->getCurrentUserId()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/service/fingerprint/IFingerprintService;->cancel(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 305
    :catch_0
    move-exception v0

    .line 306
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintManager"

    const-string v2, "Remote exception in enrollCancel(): "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 307
    const/4 v1, 0x1

    invoke-direct {p0, v1, v4, v4}, Landroid/service/fingerprint/FingerprintManager;->sendError(III)V

    goto :goto_0

    .line 310
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string v1, "FingerprintManager"

    const-string v2, "cancel(): Service not connected!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public enroll(J)V
    .locals 5
    .param p1, "timeout"    # J

    .prologue
    const/4 v4, 0x0

    .line 190
    iget-object v1, p0, Landroid/service/fingerprint/FingerprintManager;->mServiceReceiver:Landroid/service/fingerprint/IFingerprintServiceReceiver;

    if-nez v1, :cond_1

    .line 191
    const/16 v1, -0xa

    invoke-direct {p0, v1, v4, v4}, Landroid/service/fingerprint/FingerprintManager;->sendError(III)V

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    iget-object v1, p0, Landroid/service/fingerprint/FingerprintManager;->mService:Landroid/service/fingerprint/IFingerprintService;

    if-eqz v1, :cond_0

    .line 195
    :try_start_0
    iget-object v1, p0, Landroid/service/fingerprint/FingerprintManager;->mService:Landroid/service/fingerprint/IFingerprintService;

    iget-object v2, p0, Landroid/service/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    invoke-direct {p0}, Landroid/service/fingerprint/FingerprintManager;->getCurrentUserId()I

    move-result v3

    invoke-interface {v1, v2, p1, p2, v3}, Landroid/service/fingerprint/IFingerprintService;->enroll(Landroid/os/IBinder;JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintManager"

    const-string v2, "Remote exception while enrolling: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 198
    const/4 v1, 0x1

    invoke-direct {p0, v1, v4, v4}, Landroid/service/fingerprint/FingerprintManager;->sendError(III)V

    goto :goto_0
.end method

.method public enrolledAndEnabled()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 160
    iget-object v2, p0, Landroid/service/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 161
    .local v0, "res":Landroid/content/ContentResolver;
    const-string v2, "fingerprint_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Landroid/service/fingerprint/FingerprintManager;->getCurrentUserId()I

    move-result v2

    invoke-static {v0, v2}, Landroid/service/fingerprint/FingerprintUtils;->getFingerprintsForUser(Landroid/content/ContentResolver;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getEnrolledFingerprints()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 315
    iget-object v1, p0, Landroid/service/fingerprint/FingerprintManager;->mService:Landroid/service/fingerprint/IFingerprintService;

    if-eqz v1, :cond_0

    .line 317
    :try_start_0
    iget-object v1, p0, Landroid/service/fingerprint/FingerprintManager;->mService:Landroid/service/fingerprint/IFingerprintService;

    iget-object v2, p0, Landroid/service/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    invoke-direct {p0}, Landroid/service/fingerprint/FingerprintManager;->getCurrentUserId()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/service/fingerprint/IFingerprintService;->getEnrolledFingerprints(Landroid/os/IBinder;I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 324
    :goto_0
    return-object v1

    .line 318
    :catch_0
    move-exception v0

    .line 319
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintManager"

    const-string v2, "Remote exception in getEnrolledFingerprints(): "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 324
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 322
    :cond_0
    const-string v1, "FingerprintManager"

    const-string v2, "getEnrolledFingerprints(): Service not connected!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getNumEnrollmentSteps()I
    .locals 3

    .prologue
    .line 328
    iget-object v1, p0, Landroid/service/fingerprint/FingerprintManager;->mService:Landroid/service/fingerprint/IFingerprintService;

    if-eqz v1, :cond_0

    .line 330
    :try_start_0
    iget-object v1, p0, Landroid/service/fingerprint/FingerprintManager;->mService:Landroid/service/fingerprint/IFingerprintService;

    iget-object v2, p0, Landroid/service/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/service/fingerprint/IFingerprintService;->getNumEnrollmentSteps(Landroid/os/IBinder;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 337
    :goto_0
    return v1

    .line 331
    :catch_0
    move-exception v0

    .line 332
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintManager"

    const-string v2, "Remote exception in getNumEnrollmentSteps(): "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 337
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    const/4 v1, -0x1

    goto :goto_0

    .line 335
    :cond_0
    const-string v1, "FingerprintManager"

    const-string v2, "getNumEnrollmentSteps(): Service not connected!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getState()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 263
    iget-object v1, p0, Landroid/service/fingerprint/FingerprintManager;->mService:Landroid/service/fingerprint/IFingerprintService;

    if-eqz v1, :cond_0

    .line 265
    :try_start_0
    iget-object v1, p0, Landroid/service/fingerprint/FingerprintManager;->mService:Landroid/service/fingerprint/IFingerprintService;

    invoke-interface {v1}, Landroid/service/fingerprint/IFingerprintService;->getState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 273
    :goto_0
    return v1

    .line 266
    :catch_0
    move-exception v0

    .line 267
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintManager"

    const-string v2, "Remote exception in getState(): "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 273
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    const/4 v1, -0x1

    goto :goto_0

    .line 270
    :cond_0
    const-string v1, "FingerprintManager"

    const-string v2, "getState(): Service not connected!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    const/4 v1, 0x1

    invoke-direct {p0, v1, v3, v3}, Landroid/service/fingerprint/FingerprintManager;->sendError(III)V

    goto :goto_1
.end method

.method public remove(I)V
    .locals 4
    .param p1, "fingerprintId"    # I

    .prologue
    const/4 v3, 0x0

    .line 208
    iget-object v1, p0, Landroid/service/fingerprint/FingerprintManager;->mServiceReceiver:Landroid/service/fingerprint/IFingerprintServiceReceiver;

    if-nez v1, :cond_0

    .line 209
    const/16 v1, -0xa

    invoke-direct {p0, v1, v3, v3}, Landroid/service/fingerprint/FingerprintManager;->sendError(III)V

    .line 222
    :goto_0
    return-void

    .line 212
    :cond_0
    iget-object v1, p0, Landroid/service/fingerprint/FingerprintManager;->mService:Landroid/service/fingerprint/IFingerprintService;

    if-eqz v1, :cond_1

    .line 214
    :try_start_0
    iget-object v1, p0, Landroid/service/fingerprint/FingerprintManager;->mService:Landroid/service/fingerprint/IFingerprintService;

    iget-object v2, p0, Landroid/service/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    invoke-direct {p0}, Landroid/service/fingerprint/FingerprintManager;->getCurrentUserId()I

    move-result v3

    invoke-interface {v1, v2, p1, v3}, Landroid/service/fingerprint/IFingerprintService;->remove(Landroid/os/IBinder;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote exception during remove of fingerprintId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 219
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string v1, "FingerprintManager"

    const-string/jumbo v2, "remove(): Service not connected!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const/4 v1, 0x1

    invoke-direct {p0, v1, v3, v3}, Landroid/service/fingerprint/FingerprintManager;->sendError(III)V

    goto :goto_0
.end method

.method public setFingerprintName(ILjava/lang/String;)V
    .locals 4
    .param p1, "fingerprintId"    # I
    .param p2, "newName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 228
    iget-object v1, p0, Landroid/service/fingerprint/FingerprintManager;->mServiceReceiver:Landroid/service/fingerprint/IFingerprintServiceReceiver;

    if-nez v1, :cond_0

    .line 229
    const/16 v1, -0xa

    invoke-direct {p0, v1, v3, v3}, Landroid/service/fingerprint/FingerprintManager;->sendError(III)V

    .line 242
    :goto_0
    return-void

    .line 232
    :cond_0
    iget-object v1, p0, Landroid/service/fingerprint/FingerprintManager;->mService:Landroid/service/fingerprint/IFingerprintService;

    if-eqz v1, :cond_1

    .line 234
    :try_start_0
    iget-object v1, p0, Landroid/service/fingerprint/FingerprintManager;->mService:Landroid/service/fingerprint/IFingerprintService;

    iget-object v2, p0, Landroid/service/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    invoke-direct {p0}, Landroid/service/fingerprint/FingerprintManager;->getCurrentUserId()I

    move-result v3

    invoke-interface {v1, v2, p1, p2, v3}, Landroid/service/fingerprint/IFingerprintService;->setFingerprintName(Landroid/os/IBinder;ILjava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote exception renaming fingerprintId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 239
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string v1, "FingerprintManager"

    const-string/jumbo v2, "setFingerprintName(): Service not connected!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const/4 v1, 0x1

    invoke-direct {p0, v1, v3, v3}, Landroid/service/fingerprint/FingerprintManager;->sendError(III)V

    goto :goto_0
.end method

.method public startListening(Landroid/service/fingerprint/FingerprintManagerReceiver;)V
    .locals 5
    .param p1, "receiver"    # Landroid/service/fingerprint/FingerprintManagerReceiver;

    .prologue
    const/4 v3, 0x0

    .line 249
    iput-object p1, p0, Landroid/service/fingerprint/FingerprintManager;->mClientReceiver:Landroid/service/fingerprint/FingerprintManagerReceiver;

    .line 250
    iget-object v1, p0, Landroid/service/fingerprint/FingerprintManager;->mService:Landroid/service/fingerprint/IFingerprintService;

    if-eqz v1, :cond_0

    .line 252
    :try_start_0
    iget-object v1, p0, Landroid/service/fingerprint/FingerprintManager;->mService:Landroid/service/fingerprint/IFingerprintService;

    iget-object v2, p0, Landroid/service/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Landroid/service/fingerprint/FingerprintManager;->mServiceReceiver:Landroid/service/fingerprint/IFingerprintServiceReceiver;

    invoke-direct {p0}, Landroid/service/fingerprint/FingerprintManager;->getCurrentUserId()I

    move-result v4

    invoke-interface {v1, v2, v3, v4}, Landroid/service/fingerprint/IFingerprintService;->startListening(Landroid/os/IBinder;Landroid/service/fingerprint/IFingerprintServiceReceiver;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    :goto_0
    return-void

    .line 253
    :catch_0
    move-exception v0

    .line 254
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintManager"

    const-string v2, "Remote exception in startListening(): "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 257
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v1, "FingerprintManager"

    const-string/jumbo v2, "startListening(): Service not connected!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const/4 v1, 0x1

    invoke-direct {p0, v1, v3, v3}, Landroid/service/fingerprint/FingerprintManager;->sendError(III)V

    goto :goto_0
.end method

.method public stopListening()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 284
    iget-object v1, p0, Landroid/service/fingerprint/FingerprintManager;->mService:Landroid/service/fingerprint/IFingerprintService;

    if-eqz v1, :cond_0

    .line 286
    :try_start_0
    iget-object v1, p0, Landroid/service/fingerprint/FingerprintManager;->mService:Landroid/service/fingerprint/IFingerprintService;

    iget-object v2, p0, Landroid/service/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    invoke-direct {p0}, Landroid/service/fingerprint/FingerprintManager;->getCurrentUserId()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/service/fingerprint/IFingerprintService;->stopListening(Landroid/os/IBinder;I)V

    .line 287
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/service/fingerprint/FingerprintManager;->mClientReceiver:Landroid/service/fingerprint/FingerprintManagerReceiver;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    :goto_0
    return-void

    .line 288
    :catch_0
    move-exception v0

    .line 289
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintManager"

    const-string v2, "Remote exception in stopListening(): "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 292
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v1, "FingerprintManager"

    const-string/jumbo v2, "stopListening(): Service not connected!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const/4 v1, 0x1

    invoke-direct {p0, v1, v3, v3}, Landroid/service/fingerprint/FingerprintManager;->sendError(III)V

    goto :goto_0
.end method
