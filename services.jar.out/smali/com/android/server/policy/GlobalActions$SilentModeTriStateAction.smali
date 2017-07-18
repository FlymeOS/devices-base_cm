.class final Lcom/android/server/policy/GlobalActions$SilentModeTriStateAction;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Lcom/android/server/policy/GlobalActions$Action;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SilentModeTriStateAction"
.end annotation


# instance fields
.field private final ITEM_IDS:[I

.field private final ITEM_INDEX_TO_ZEN_MODE:[I

.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions;Landroid/content/Context;Landroid/media/AudioManager;Landroid/os/Handler;)V
    .locals 5
    .param p1, "this$0"    # Lcom/android/server/policy/GlobalActions;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "audioManager"    # Landroid/media/AudioManager;
    .param p4, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v4, 0x0

    .line 1226
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$SilentModeTriStateAction;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1214
    const v0, 0x1020334

    const v1, 0x1020335

    const v2, 0x1020336

    const v3, 0x1020337

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions$SilentModeTriStateAction;->ITEM_IDS:[I

    .line 1216
    const/4 v0, 0x2

    .line 1217
    const/4 v1, 0x1

    .line 1215
    filled-new-array {v0, v1, v4, v4}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions$SilentModeTriStateAction;->ITEM_INDEX_TO_ZEN_MODE:[I

    .line 1227
    iput-object p3, p0, Lcom/android/server/policy/GlobalActions$SilentModeTriStateAction;->mAudioManager:Landroid/media/AudioManager;

    .line 1228
    iput-object p4, p0, Lcom/android/server/policy/GlobalActions$SilentModeTriStateAction;->mHandler:Landroid/os/Handler;

    .line 1229
    iput-object p2, p0, Lcom/android/server/policy/GlobalActions$SilentModeTriStateAction;->mContext:Landroid/content/Context;

    .line 1226
    return-void
.end method

.method private indexToRingerMode(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    const/4 v1, 0x2

    .line 1233
    if-ne p1, v1, :cond_1

    .line 1234
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$SilentModeTriStateAction;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->-get10(Lcom/android/server/policy/GlobalActions;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1235
    const/4 v0, 0x1

    return v0

    .line 1237
    :cond_0
    return v1

    .line 1240
    :cond_1
    return v1
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    const/4 v10, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1250
    const v6, 0x1090063

    invoke-virtual {p4, v6, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 1252
    .local v4, "v":Landroid/view/View;
    iget-object v6, p0, Lcom/android/server/policy/GlobalActions$SilentModeTriStateAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v2

    .line 1253
    .local v2, "ringerMode":I
    iget-object v6, p0, Lcom/android/server/policy/GlobalActions$SilentModeTriStateAction;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v9, "zen_mode"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 1255
    .local v5, "zenMode":I
    const/4 v3, 0x0

    .line 1256
    .local v3, "selectedIndex":I
    if-eqz v5, :cond_2

    .line 1257
    if-ne v5, v10, :cond_1

    .line 1258
    const/4 v3, 0x0

    .line 1268
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v6, p0, Lcom/android/server/policy/GlobalActions$SilentModeTriStateAction;->ITEM_IDS:[I

    array-length v6, v6

    if-ge v0, v6, :cond_6

    .line 1269
    iget-object v6, p0, Lcom/android/server/policy/GlobalActions$SilentModeTriStateAction;->ITEM_IDS:[I

    aget v6, v6, v0

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1270
    .local v1, "itemView":Landroid/view/View;
    iget-object v6, p0, Lcom/android/server/policy/GlobalActions$SilentModeTriStateAction;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v6}, Lcom/android/server/policy/GlobalActions;->-get10(Lcom/android/server/policy/GlobalActions;)Z

    move-result v6

    if-nez v6, :cond_4

    if-ne v0, v10, :cond_4

    .line 1271
    const/16 v6, 0x8

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1268
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1259
    .end local v0    # "i":I
    .end local v1    # "itemView":Landroid/view/View;
    :cond_1
    if-ne v5, v7, :cond_0

    .line 1260
    const/4 v3, 0x1

    goto :goto_0

    .line 1262
    :cond_2
    if-ne v2, v7, :cond_3

    .line 1263
    const/4 v3, 0x2

    goto :goto_0

    .line 1264
    :cond_3
    if-ne v2, v10, :cond_0

    .line 1265
    const/4 v3, 0x3

    goto :goto_0

    .line 1274
    .restart local v0    # "i":I
    .restart local v1    # "itemView":Landroid/view/View;
    :cond_4
    if-ne v3, v0, :cond_5

    move v6, v7

    :goto_3
    invoke-virtual {v1, v6}, Landroid/view/View;->setSelected(Z)V

    .line 1276
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1277
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_5
    move v6, v8

    .line 1274
    goto :goto_3

    .line 1279
    .end local v1    # "itemView":Landroid/view/View;
    :cond_6
    return-object v4
.end method

.method public getLabelForAccessibility(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1245
    const/4 v0, 0x0

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 1294
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1301
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Ljava/lang/Integer;

    if-nez v5, :cond_0

    return-void

    .line 1303
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1304
    .local v1, "index":I
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$SilentModeTriStateAction;->ITEM_INDEX_TO_ZEN_MODE:[I

    aget v4, v5, v1

    .line 1308
    .local v4, "zenMode":I
    const-string/jumbo v5, "notification"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    .line 1307
    invoke-static {v5}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v2

    .line 1310
    .local v2, "noMan":Landroid/app/INotificationManager;
    :try_start_0
    const-string/jumbo v5, "GlobalActions"

    const/4 v6, 0x0

    invoke-interface {v2, v4, v6, v5}, Landroid/app/INotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1315
    :goto_0
    const/4 v5, 0x2

    if-eq v1, v5, :cond_1

    const/4 v5, 0x3

    if-ne v1, v5, :cond_2

    .line 1316
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/server/policy/GlobalActions$SilentModeTriStateAction;->indexToRingerMode(I)I

    move-result v3

    .line 1317
    .local v3, "ringerMode":I
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$SilentModeTriStateAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5, v3}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    .line 1319
    .end local v3    # "ringerMode":I
    :cond_2
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$SilentModeTriStateAction;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v5}, Lcom/android/server/policy/GlobalActions;->-get0(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/policy/GlobalActions$MyAdapter;->notifyDataSetChanged()V

    .line 1320
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$SilentModeTriStateAction;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x12c

    const/4 v8, 0x0

    invoke-virtual {v5, v8, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1300
    return-void

    .line 1311
    :catch_0
    move-exception v0

    .line 1312
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "GlobalActions"

    const-string/jumbo v6, "Unable to set zen mode"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onPress()V
    .locals 0

    .prologue
    .line 1282
    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 1290
    const/4 v0, 0x0

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 1286
    const/4 v0, 0x1

    return v0
.end method

.method willCreate()V
    .locals 0

    .prologue
    .line 1297
    return-void
.end method
