.class Lcom/android/internal/os/storage/ExternalStorageFormatter$2;
.super Ljava/lang/Thread;
.source "ExternalStorageFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateProgressState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

.field final synthetic val$mountService:Landroid/os/storage/IMountService;

.field final synthetic val$toastTextResId:I


# direct methods
.method constructor <init>(Lcom/android/internal/os/storage/ExternalStorageFormatter;Landroid/os/storage/IMountService;I)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    iput-object p2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->val$mountService:Landroid/os/storage/IMountService;

    iput p3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->val$toastTextResId:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/high16 v11, 0x10000000

    const/4 v10, 0x1

    .line 249
    const/4 v6, 0x0

    .line 250
    .local v6, "success":Z
    const/4 v4, 0x0

    .line 251
    .local v4, "physicalVol":Landroid/os/storage/StorageVolume;
    const/4 v5, 0x0

    .line 252
    .local v5, "physicalVols":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    const/4 v2, 0x0

    .line 254
    .local v2, "extStoragePath":Ljava/lang/String;
    :try_start_0
    iget-object v8, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->val$mountService:Landroid/os/storage/IMountService;

    invoke-interface {v8}, Landroid/os/storage/IMountService;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v7

    .line 255
    .local v7, "volumes":[Landroid/os/storage/StorageVolume;
    invoke-static {v7}, Landroid/os/storage/StorageManager;->getPhysicalExternalVolume([Landroid/os/storage/StorageVolume;)Ljava/util/ArrayList;

    move-result-object v5

    .line 257
    iget-object v8, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    # getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;
    invoke-static {v8}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$000(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Landroid/os/storage/StorageVolume;

    move-result-object v8

    if-nez v8, :cond_1

    .line 258
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_0

    .line 259
    iget-object v8, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    const v9, 0x1040083

    invoke-virtual {v8, v9}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateProgressDialog(I)V

    .line 314
    .end local v7    # "volumes":[Landroid/os/storage/StorageVolume;
    :goto_0
    return-void

    .line 262
    .restart local v7    # "volumes":[Landroid/os/storage/StorageVolume;
    :cond_0
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Landroid/os/storage/StorageVolume;

    move-object v4, v0

    .line 263
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 270
    :goto_1
    iget-object v8, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->val$mountService:Landroid/os/storage/IMountService;

    invoke-interface {v8, v2}, Landroid/os/storage/IMountService;->formatVolume(Ljava/lang/String;)I

    .line 271
    iget-object v8, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    const/4 v9, 0x1

    # setter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->mIsFormatSuccess:Z
    invoke-static {v8, v9}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$102(Lcom/android/internal/os/storage/ExternalStorageFormatter;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    const/4 v6, 0x1

    .line 278
    .end local v7    # "volumes":[Landroid/os/storage/StorageVolume;
    :goto_2
    if-eqz v6, :cond_2

    .line 279
    iget-object v8, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    # getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFactoryReset:Z
    invoke-static {v8}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$200(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 280
    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 281
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 282
    const-string v8, "android.intent.extra.REASON"

    iget-object v9, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    # getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->mReason:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$300(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 283
    const-string v8, "wipe_media"

    iget-object v9, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    # getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->mWipeInternalStorage:Z
    invoke-static {v9}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$400(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Z

    move-result v9

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 284
    iget-object v8, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    invoke-virtual {v8, v3}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->sendBroadcast(Landroid/content/Intent;)V

    .line 286
    iget-object v8, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    invoke-virtual {v8}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->stopSelf()V

    goto :goto_0

    .line 268
    .end local v3    # "intent":Landroid/content/Intent;
    .restart local v7    # "volumes":[Landroid/os/storage/StorageVolume;
    :cond_1
    :try_start_1
    iget-object v8, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    # getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;
    invoke-static {v8}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$000(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Landroid/os/storage/StorageVolume;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_1

    .line 273
    .end local v7    # "volumes":[Landroid/os/storage/StorageVolume;
    :catch_0
    move-exception v1

    .line 274
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 275
    iget-object v8, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    iget v9, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->val$toastTextResId:I

    invoke-static {v8, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 292
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    if-nez v6, :cond_3

    iget-object v8, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    # getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->mAlwaysReset:Z
    invoke-static {v8}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$500(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 293
    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 294
    .restart local v3    # "intent":Landroid/content/Intent;
    invoke-virtual {v3, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 295
    const-string v8, "android.intent.extra.REASON"

    iget-object v9, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    # getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->mReason:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$300(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 296
    const-string v8, "wipe_media"

    iget-object v9, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    # getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->mWipeInternalStorage:Z
    invoke-static {v9}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$400(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Z

    move-result v9

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 297
    iget-object v8, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    invoke-virtual {v8, v3}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->sendBroadcast(Landroid/content/Intent;)V

    .line 313
    .end local v3    # "intent":Landroid/content/Intent;
    :goto_3
    iget-object v8, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    invoke-virtual {v8}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->stopSelf()V

    goto/16 :goto_0

    .line 300
    :cond_3
    :try_start_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_4

    .line 301
    iget-object v8, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    const v9, 0x1040083

    invoke-virtual {v8, v9}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateProgressDialog(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 309
    :catch_1
    move-exception v1

    .line 310
    .local v1, "e":Landroid/os/RemoteException;
    const-string v8, "ExternalStorageFormatter"

    const-string v9, "Failed talking with mount service"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 304
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_4
    const/4 v8, 0x0

    :try_start_3
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Landroid/os/storage/StorageVolume;

    move-object v4, v0

    .line 305
    iget-object v8, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    # getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;
    invoke-static {v8}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$000(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Landroid/os/storage/StorageVolume;

    move-result-object v8

    if-nez v8, :cond_5

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 307
    :goto_4
    iget-object v8, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->val$mountService:Landroid/os/storage/IMountService;

    invoke-interface {v8, v2}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I

    goto :goto_3

    .line 305
    :cond_5
    iget-object v8, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    # getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;
    invoke-static {v8}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$000(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Landroid/os/storage/StorageVolume;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v2

    goto :goto_4
.end method
