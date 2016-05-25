.class public Lcom/android/internal/app/ExternalMediaFormatActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "ExternalMediaFormatActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field public static final FORMAT_PATH:Ljava/lang/String; = "format_path"

.field private static final POSITIVE_BUTTON:I = -0x1


# instance fields
.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mStorageReceiver:Landroid/content/BroadcastReceiver;

.field private mStorageVolume:Landroid/os/storage/StorageVolume;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ExternalMediaFormatActivity;->mStorageVolume:Landroid/os/storage/StorageVolume;

    .line 45
    new-instance v0, Lcom/android/internal/app/ExternalMediaFormatActivity$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ExternalMediaFormatActivity$1;-><init>(Lcom/android/internal/app/ExternalMediaFormatActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/ExternalMediaFormatActivity;->mStorageReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 125
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 126
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.os.storage.FORMAT_ONLY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 127
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 128
    const-string v1, "storage_volume"

    iget-object v2, p0, Lcom/android/internal/app/ExternalMediaFormatActivity;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 129
    invoke-virtual {p0, v0}, Lcom/android/internal/app/ExternalMediaFormatActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 133
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ExternalMediaFormatActivity;->finish()V

    .line 134
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 62
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    const-string v8, "storage"

    invoke-virtual {p0, v8}, Lcom/android/internal/app/ExternalMediaFormatActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/storage/StorageManager;

    iput-object v8, p0, Lcom/android/internal/app/ExternalMediaFormatActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 70
    invoke-virtual {p0}, Lcom/android/internal/app/ExternalMediaFormatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v11, "format_path"

    invoke-virtual {v8, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 71
    .local v5, "path":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/internal/app/ExternalMediaFormatActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v8}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v7

    .line 73
    .local v7, "volumes":[Landroid/os/storage/StorageVolume;
    move-object v0, v7

    .local v0, "arr$":[Landroid/os/storage/StorageVolume;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v6, v0, v1

    .line 74
    .local v6, "sv":Landroid/os/storage/StorageVolume;
    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 75
    iput-object v6, p0, Lcom/android/internal/app/ExternalMediaFormatActivity;->mStorageVolume:Landroid/os/storage/StorageVolume;

    .line 80
    .end local v6    # "sv":Landroid/os/storage/StorageVolume;
    :cond_0
    const-string v8, "ExternalMediaFormatActivity"

    const-string v11, "onCreate!"

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const-string v8, "ExternalMediaFormatActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "The storage volume to be formatted is : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/app/ExternalMediaFormatActivity;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v12}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v8, p0, Lcom/android/internal/app/ExternalMediaFormatActivity;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v8}, Landroid/os/storage/StorageVolume;->getDescriptionId()I

    move-result v8

    const v11, 0x104067c

    if-ne v8, v11, :cond_2

    move v2, v9

    .line 88
    .local v2, "isUsbStorage":Z
    :goto_1
    iget-object v4, p0, Lcom/android/internal/app/ExternalMediaFormatActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 89
    .local v4, "p":Lcom/android/internal/app/AlertController$AlertParams;
    const v8, 0x10405d6

    invoke-virtual {p0, v8}, Lcom/android/internal/app/ExternalMediaFormatActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 90
    if-eqz v2, :cond_3

    const v8, 0x104009a

    :goto_2
    invoke-virtual {p0, v8}, Lcom/android/internal/app/ExternalMediaFormatActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-array v9, v9, [Ljava/lang/Object;

    iget-object v11, p0, Lcom/android/internal/app/ExternalMediaFormatActivity;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v11}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 94
    const v8, 0x10405d8

    invoke-virtual {p0, v8}, Lcom/android/internal/app/ExternalMediaFormatActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 95
    iput-object p0, v4, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 96
    const/high16 v8, 0x1040000

    invoke-virtual {p0, v8}, Lcom/android/internal/app/ExternalMediaFormatActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 97
    iput-object p0, v4, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 98
    invoke-virtual {p0}, Lcom/android/internal/app/ExternalMediaFormatActivity;->setupAlert()V

    .line 99
    return-void

    .line 73
    .end local v2    # "isUsbStorage":Z
    .end local v4    # "p":Lcom/android/internal/app/AlertController$AlertParams;
    .restart local v6    # "sv":Landroid/os/storage/StorageVolume;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v6    # "sv":Landroid/os/storage/StorageVolume;
    :cond_2
    move v2, v10

    .line 84
    goto :goto_1

    .line 90
    .restart local v2    # "isUsbStorage":Z
    .restart local v4    # "p":Lcom/android/internal/app/AlertController$AlertParams;
    :cond_3
    const v8, 0x104009b

    goto :goto_2
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 115
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    .line 117
    iget-object v0, p0, Lcom/android/internal/app/ExternalMediaFormatActivity;->mStorageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ExternalMediaFormatActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 118
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 103
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    .line 105
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 106
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    const-string v1, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 108
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 109
    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 110
    iget-object v1, p0, Lcom/android/internal/app/ExternalMediaFormatActivity;->mStorageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/app/ExternalMediaFormatActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 111
    return-void
.end method
