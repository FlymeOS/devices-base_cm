.class public Lcom/android/internal/os/storage/ExternalStorageFormatter;
.super Landroid/app/Service;
.source "ExternalStorageFormatter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# static fields
.field public static final COMPONENT_NAME:Landroid/content/ComponentName;

.field public static final EXTRA_ALWAYS_RESET:Ljava/lang/String; = "always_reset"

.field public static final EXTRA_WIPE_MEDIA:Ljava/lang/String; = "wipe_media"

.field public static final FORMAT_AND_FACTORY_RESET:Ljava/lang/String; = "com.android.internal.os.storage.FORMAT_AND_FACTORY_RESET"

.field public static final FORMAT_ONLY:Ljava/lang/String; = "com.android.internal.os.storage.FORMAT_ONLY"

.field static final TAG:Ljava/lang/String; = "ExternalStorageFormatter"


# instance fields
.field private mAlwaysReset:Z

.field private mFactoryReset:Z

.field private mIsFormatSuccess:Z

.field private mMountService:Landroid/os/storage/IMountService;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mReason:Ljava/lang/String;

.field mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mStorageVolume:Landroid/os/storage/StorageVolume;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWipeInternalStorage:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 49
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "android"

    const-class v2, Lcom/android/internal/os/storage/ExternalStorageFormatter;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 53
    iput-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mMountService:Landroid/os/storage/IMountService;

    .line 55
    iput-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 59
    iput-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 61
    iput-boolean v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFactoryReset:Z

    .line 62
    iput-boolean v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mAlwaysReset:Z

    .line 63
    iput-boolean v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mWipeInternalStorage:Z

    .line 64
    iput-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mReason:Ljava/lang/String;

    .line 65
    iput-boolean v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mIsFormatSuccess:Z

    .line 67
    new-instance v0, Lcom/android/internal/os/storage/ExternalStorageFormatter$1;

    invoke-direct {v0, p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter$1;-><init>(Lcom/android/internal/os/storage/ExternalStorageFormatter;)V

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageListener:Landroid/os/storage/StorageEventListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Landroid/os/storage/StorageVolume;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/os/storage/ExternalStorageFormatter;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/os/storage/ExternalStorageFormatter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/os/storage/ExternalStorageFormatter;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mIsFormatSuccess:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/os/storage/ExternalStorageFormatter;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFactoryReset:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/os/storage/ExternalStorageFormatter;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mReason:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/os/storage/ExternalStorageFormatter;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mWipeInternalStorage:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/os/storage/ExternalStorageFormatter;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mAlwaysReset:Z

    return v0
.end method


# virtual methods
.method fail(I)V
    .locals 3
    .param p1, "msg"    # I

    .prologue
    .line 165
    const/4 v1, 0x1

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 166
    iget-boolean v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mAlwaysReset:Z

    if-eqz v1, :cond_0

    .line 167
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 168
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 169
    const-string v1, "android.intent.extra.REASON"

    iget-object v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mReason:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    invoke-virtual {p0, v0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->sendBroadcast(Landroid/content/Intent;)V

    .line 172
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->stopSelf()V

    .line 173
    return-void
.end method

.method getMountService()Landroid/os/storage/IMountService;
    .locals 3

    .prologue
    .line 348
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mMountService:Landroid/os/storage/IMountService;

    if-nez v1, :cond_0

    .line 349
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 350
    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 351
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mMountService:Landroid/os/storage/IMountService;

    .line 356
    .end local v0    # "service":Landroid/os/IBinder;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mMountService:Landroid/os/storage/IMountService;

    return-object v1

    .line 353
    .restart local v0    # "service":Landroid/os/IBinder;
    :cond_1
    const-string v1, "ExternalStorageFormatter"

    const-string v2, "Can\'t get mount service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 133
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v2

    .line 140
    .local v2, "mountService":Landroid/os/storage/IMountService;
    :try_start_0
    invoke-interface {v2}, Landroid/os/storage/IMountService;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v5

    .line 141
    .local v5, "volumes":[Landroid/os/storage/StorageVolume;
    invoke-static {v5}, Landroid/os/storage/StorageManager;->getPhysicalExternalVolume([Landroid/os/storage/StorageVolume;)Ljava/util/ArrayList;

    move-result-object v4

    .line 142
    .local v4, "physicalVols":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    const/4 v1, 0x0

    .line 144
    .local v1, "extStoragePath":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    if-nez v6, :cond_1

    .line 145
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 146
    const v6, 0x1040083

    invoke-virtual {p0, v6}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateProgressDialog(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    .end local v1    # "extStoragePath":Ljava/lang/String;
    .end local v4    # "physicalVols":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .end local v5    # "volumes":[Landroid/os/storage/StorageVolume;
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->stopSelf()V

    .line 162
    return-void

    .line 148
    .restart local v1    # "extStoragePath":Ljava/lang/String;
    .restart local v4    # "physicalVols":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .restart local v5    # "volumes":[Landroid/os/storage/StorageVolume;
    :cond_0
    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageVolume;

    .line 149
    .local v3, "physicalVol":Landroid/os/storage/StorageVolume;
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->toString()Ljava/lang/String;

    move-result-object v1

    .line 150
    invoke-interface {v2, v1}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 158
    .end local v1    # "extStoragePath":Ljava/lang/String;
    .end local v3    # "physicalVol":Landroid/os/storage/StorageVolume;
    .end local v4    # "physicalVols":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .end local v5    # "volumes":[Landroid/os/storage/StorageVolume;
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Landroid/os/RemoteException;
    const-string v6, "ExternalStorageFormatter"

    const-string v7, "Failed talking with mount service"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 155
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "extStoragePath":Ljava/lang/String;
    .restart local v4    # "physicalVols":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .restart local v5    # "volumes":[Landroid/os/storage/StorageVolume;
    :cond_1
    :try_start_2
    iget-object v6, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 156
    invoke-interface {v2, v1}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 79
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 81
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_0

    .line 82
    const-string v0, "storage"

    invoke-virtual {p0, v0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 83
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 86
    :cond_0
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "ExternalStorageFormatter"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 88
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 89
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 128
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 129
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 93
    const-string v0, "com.android.internal.os.storage.FORMAT_AND_FACTORY_RESET"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iput-boolean v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFactoryReset:Z

    .line 96
    :cond_0
    const-string v0, "always_reset"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    iput-boolean v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mAlwaysReset:Z

    .line 99
    :cond_1
    const-string v0, "wipe_media"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mWipeInternalStorage:Z

    .line 101
    const-string v0, "android.intent.extra.REASON"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mReason:Ljava/lang/String;

    .line 102
    const-string v0, "storage_volume"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageVolume;

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    .line 104
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_3

    .line 105
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 106
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 107
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 108
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 109
    iget-boolean v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mAlwaysReset:Z

    if-nez v0, :cond_2

    .line 110
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 112
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateProgressState()V

    .line 113
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 116
    :cond_3
    const/4 v0, 0x3

    return v0
.end method

.method public updateProgressDialog(I)V
    .locals 2
    .param p1, "msg"    # I

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 337
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 338
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 339
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 340
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 341
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0, p1}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 345
    return-void
.end method

.method updateProgressState()V
    .locals 14

    .prologue
    const v13, 0x104067c

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 178
    const/4 v6, 0x0

    .line 179
    .local v6, "status":Ljava/lang/String;
    const/4 v1, 0x0

    .line 181
    .local v1, "extStoragePath":Ljava/lang/String;
    const/4 v2, 0x0

    .line 183
    .local v2, "isUsbStorage":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v3

    .line 184
    .local v3, "mountService":Landroid/os/storage/IMountService;
    invoke-interface {v3}, Landroid/os/storage/IMountService;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v8

    .line 185
    .local v8, "volumes":[Landroid/os/storage/StorageVolume;
    invoke-static {v8}, Landroid/os/storage/StorageManager;->getPhysicalExternalVolume([Landroid/os/storage/StorageVolume;)Ljava/util/ArrayList;

    move-result-object v5

    .line 187
    .local v5, "physicalVols":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    iget-object v11, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    if-nez v11, :cond_4

    .line 188
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-nez v11, :cond_1

    .line 189
    const v9, 0x1040083

    invoke-virtual {p0, v9}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateProgressDialog(I)V

    .line 333
    .end local v3    # "mountService":Landroid/os/storage/IMountService;
    .end local v5    # "physicalVols":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .end local v8    # "volumes":[Landroid/os/storage/StorageVolume;
    :cond_0
    :goto_0
    return-void

    .line 192
    .restart local v3    # "mountService":Landroid/os/storage/IMountService;
    .restart local v5    # "physicalVols":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .restart local v8    # "volumes":[Landroid/os/storage/StorageVolume;
    :cond_1
    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/StorageVolume;

    .line 193
    .local v4, "physicalVol":Landroid/os/storage/StorageVolume;
    iget-object v11, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 194
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getDescriptionId()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v11

    if-ne v11, v13, :cond_3

    move v2, v9

    .line 206
    .end local v3    # "mountService":Landroid/os/storage/IMountService;
    .end local v4    # "physicalVol":Landroid/os/storage/StorageVolume;
    .end local v5    # "physicalVols":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .end local v8    # "volumes":[Landroid/os/storage/StorageVolume;
    :goto_1
    const-string v9, "mounted"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "mounted_ro"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 208
    :cond_2
    if-eqz v2, :cond_6

    const v9, 0x10400a3

    :goto_2
    invoke-virtual {p0, v9}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateProgressDialog(I)V

    .line 211
    :try_start_1
    iget-boolean v9, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mIsFormatSuccess:Z

    if-nez v9, :cond_0

    .line 212
    invoke-virtual {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v3

    .line 213
    .restart local v3    # "mountService":Landroid/os/storage/IMountService;
    invoke-interface {v3}, Landroid/os/storage/IMountService;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v8

    .line 214
    .restart local v8    # "volumes":[Landroid/os/storage/StorageVolume;
    invoke-static {v8}, Landroid/os/storage/StorageManager;->getPhysicalExternalVolume([Landroid/os/storage/StorageVolume;)Ljava/util/ArrayList;

    move-result-object v5

    .line 216
    .restart local v5    # "physicalVols":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    iget-object v9, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    if-nez v9, :cond_8

    .line 217
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_7

    .line 218
    const v9, 0x1040083

    invoke-virtual {p0, v9}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateProgressDialog(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 233
    .end local v3    # "mountService":Landroid/os/storage/IMountService;
    .end local v5    # "physicalVols":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .end local v8    # "volumes":[Landroid/os/storage/StorageVolume;
    :catch_0
    move-exception v0

    .line 234
    .local v0, "e":Landroid/os/RemoteException;
    const-string v9, "ExternalStorageFormatter"

    const-string v10, "Failed talking with mount service"

    invoke-static {v9, v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v3    # "mountService":Landroid/os/storage/IMountService;
    .restart local v4    # "physicalVol":Landroid/os/storage/StorageVolume;
    .restart local v5    # "physicalVols":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .restart local v8    # "volumes":[Landroid/os/storage/StorageVolume;
    :cond_3
    move v2, v10

    .line 194
    goto :goto_1

    .line 199
    .end local v4    # "physicalVol":Landroid/os/storage/StorageVolume;
    :cond_4
    :try_start_2
    iget-object v11, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v12, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v12}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 200
    iget-object v11, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v11}, Landroid/os/storage/StorageVolume;->getDescriptionId()I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v11

    if-ne v11, v13, :cond_5

    move v2, v9

    :goto_3
    goto :goto_1

    :cond_5
    move v2, v10

    goto :goto_3

    .line 203
    .end local v3    # "mountService":Landroid/os/storage/IMountService;
    .end local v5    # "physicalVols":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .end local v8    # "volumes":[Landroid/os/storage/StorageVolume;
    :catch_1
    move-exception v0

    .line 204
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v9, "ExternalStorageFormatter"

    const-string v10, "Failed talking with mount service"

    invoke-static {v9, v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 208
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_6
    const v9, 0x104009c

    goto :goto_2

    .line 221
    .restart local v3    # "mountService":Landroid/os/storage/IMountService;
    .restart local v5    # "physicalVols":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .restart local v8    # "volumes":[Landroid/os/storage/StorageVolume;
    :cond_7
    const/4 v9, 0x0

    :try_start_3
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/StorageVolume;

    .line 222
    .restart local v4    # "physicalVol":Landroid/os/storage/StorageVolume;
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 223
    const-string v9, "ExternalStorageFormatter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "physicalVol : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const/4 v9, 0x1

    iget-boolean v10, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFactoryReset:Z

    invoke-interface {v3, v1, v9, v10}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 229
    .end local v4    # "physicalVol":Landroid/os/storage/StorageVolume;
    :cond_8
    iget-object v9, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v9}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 230
    const/4 v9, 0x1

    iget-boolean v10, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFactoryReset:Z

    invoke-interface {v3, v1, v9, v10}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 237
    .end local v3    # "mountService":Landroid/os/storage/IMountService;
    .end local v5    # "physicalVols":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .end local v8    # "volumes":[Landroid/os/storage/StorageVolume;
    :cond_9
    const-string v9, "nofs"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    const-string v9, "unmounted"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    const-string v9, "unmountable"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 240
    :cond_a
    if-eqz v2, :cond_b

    const v9, 0x10400a4

    :goto_4
    invoke-virtual {p0, v9}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateProgressDialog(I)V

    .line 242
    if-eqz v2, :cond_c

    const v7, 0x10400a5

    .line 244
    .local v7, "toastTextResId":I
    :goto_5
    invoke-virtual {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v3

    .line 245
    .restart local v3    # "mountService":Landroid/os/storage/IMountService;
    if-eqz v3, :cond_d

    .line 246
    new-instance v9, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;

    invoke-direct {v9, p0, v3, v7}, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;-><init>(Lcom/android/internal/os/storage/ExternalStorageFormatter;Landroid/os/storage/IMountService;I)V

    invoke-virtual {v9}, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->start()V

    goto/16 :goto_0

    .line 240
    .end local v3    # "mountService":Landroid/os/storage/IMountService;
    .end local v7    # "toastTextResId":I
    :cond_b
    const v9, 0x104009d

    goto :goto_4

    .line 242
    :cond_c
    const v7, 0x104009e

    goto :goto_5

    .line 318
    .restart local v3    # "mountService":Landroid/os/storage/IMountService;
    .restart local v7    # "toastTextResId":I
    :cond_d
    const-string v9, "ExternalStorageFormatter"

    const-string v10, "Unable to locate IMountService"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 320
    .end local v3    # "mountService":Landroid/os/storage/IMountService;
    .end local v7    # "toastTextResId":I
    :cond_e
    const-string v9, "bad_removal"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 321
    if-eqz v2, :cond_f

    const v9, 0x10400a6

    :goto_6
    invoke-virtual {p0, v9}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->fail(I)V

    goto/16 :goto_0

    :cond_f
    const v9, 0x104009f

    goto :goto_6

    .line 322
    :cond_10
    const-string v9, "checking"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 323
    if-eqz v2, :cond_11

    const v9, 0x10400a7

    :goto_7
    invoke-virtual {p0, v9}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->fail(I)V

    goto/16 :goto_0

    :cond_11
    const v9, 0x10400a0

    goto :goto_7

    .line 324
    :cond_12
    const-string v9, "removed"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14

    .line 325
    if-eqz v2, :cond_13

    const v9, 0x10400a8

    :goto_8
    invoke-virtual {p0, v9}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->fail(I)V

    goto/16 :goto_0

    :cond_13
    const v9, 0x10400a1

    goto :goto_8

    .line 326
    :cond_14
    const-string v9, "shared"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_16

    .line 327
    if-eqz v2, :cond_15

    const v9, 0x10400a9

    :goto_9
    invoke-virtual {p0, v9}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->fail(I)V

    goto/16 :goto_0

    :cond_15
    const v9, 0x10400a2

    goto :goto_9

    .line 329
    :cond_16
    const v9, 0x1040643

    invoke-virtual {p0, v9}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->fail(I)V

    .line 330
    const-string v9, "ExternalStorageFormatter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown storage state: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    invoke-virtual {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->stopSelf()V

    goto/16 :goto_0
.end method
