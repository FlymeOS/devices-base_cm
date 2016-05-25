.class public Landroid/media/Ringtone;
.super Ljava/lang/Object;
.source "Ringtone.java"


# static fields
.field private static final DRM_COLUMNS:[Ljava/lang/String;

.field private static final LOGD:Z = true

.field private static final MEDIA_COLUMNS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "Ringtone"


# instance fields
.field private final mAllowRemote:Z

.field private mAudioAttributes:Landroid/media/AudioAttributes;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mContext:Landroid/content/Context;

.field private mLocalPlayer:Landroid/media/MediaPlayer;

.field private final mRemotePlayer:Landroid/media/IRingtonePlayer;

.field private final mRemoteToken:Landroid/os/Binder;

.field private mTitle:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 47
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "_data"

    aput-object v1, v0, v3

    const-string/jumbo v1, "title"

    aput-object v1, v0, v4

    sput-object v0, Landroid/media/Ringtone;->MEDIA_COLUMNS:[Ljava/lang/String;

    .line 53
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "_data"

    aput-object v1, v0, v3

    const-string/jumbo v1, "title"

    aput-object v1, v0, v4

    sput-object v0, Landroid/media/Ringtone;->DRM_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "allowRemote"    # Z

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 83
    iput-object p1, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    .line 84
    iget-object v0, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Landroid/media/Ringtone;->mAudioManager:Landroid/media/AudioManager;

    .line 85
    iput-boolean p2, p0, Landroid/media/Ringtone;->mAllowRemote:Z

    .line 86
    if-eqz p2, :cond_1

    iget-object v0, p0, Landroid/media/Ringtone;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroid/media/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    .line 87
    if-eqz p2, :cond_0

    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    :cond_0
    iput-object v1, p0, Landroid/media/Ringtone;->mRemoteToken:Landroid/os/Binder;

    .line 88
    return-void

    :cond_1
    move-object v0, v1

    .line 86
    goto :goto_0
.end method

.method private destroyLocalPlayer()V
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 321
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 322
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    .line 324
    :cond_0
    return-void
.end method

.method private static getTitle(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "followSettingsUri"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v11, 0x1

    .line 151
    const/4 v9, 0x0

    .line 152
    .local v9, "cursor":Landroid/database/Cursor;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 154
    .local v0, "res":Landroid/content/ContentResolver;
    const/4 v10, 0x0

    .line 156
    .local v10, "title":Ljava/lang/String;
    if-eqz p1, :cond_3

    .line 157
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v8

    .line 159
    .local v8, "authority":Ljava/lang/String;
    const-string/jumbo v1, "settings"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 160
    if-eqz p2, :cond_3

    .line 162
    invoke-static {p1}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v1

    if-ne v1, v11, :cond_1

    .line 163
    invoke-static {p1}, Landroid/media/RingtoneManager;->getDefaultRingtoneSubIdByUri(Landroid/net/Uri;)I

    move-result v1

    invoke-static {p0, v1}, Landroid/media/RingtoneManager;->getActualRingtoneUriBySubId(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v7

    .line 169
    .local v7, "actualUri":Landroid/net/Uri;
    :goto_0
    if-nez v7, :cond_2

    .line 170
    const v1, 0x104058b

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object v1, v10

    .line 213
    .end local v7    # "actualUri":Landroid/net/Uri;
    .end local v8    # "authority":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v1

    .line 166
    .restart local v8    # "authority":Ljava/lang/String;
    :cond_1
    invoke-static {p1}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v1

    invoke-static {p0, v1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v7

    .restart local v7    # "actualUri":Landroid/net/Uri;
    goto :goto_0

    .line 174
    :cond_2
    invoke-static {p0, v7, v3}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;

    move-result-object v6

    .line 175
    .local v6, "actualTitle":Ljava/lang/String;
    const v1, 0x104058c

    new-array v2, v11, [Ljava/lang/Object;

    aput-object v6, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 205
    .end local v6    # "actualTitle":Ljava/lang/String;
    .end local v7    # "actualUri":Landroid/net/Uri;
    .end local v8    # "authority":Ljava/lang/String;
    :cond_3
    :goto_2
    if-nez v10, :cond_4

    .line 206
    const v1, 0x104058f

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 208
    if-nez v10, :cond_4

    .line 209
    const-string v10, ""

    :cond_4
    move-object v1, v10

    .line 213
    goto :goto_1

    .line 181
    .restart local v8    # "authority":Ljava/lang/String;
    :cond_5
    :try_start_0
    const-string v1, "drm"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 182
    sget-object v2, Landroid/media/Ringtone;->DRM_COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 191
    :cond_6
    :goto_3
    if-eqz v9, :cond_8

    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ne v1, v11, :cond_8

    .line 192
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 193
    const/4 v1, 0x2

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 198
    if-eqz v9, :cond_0

    .line 199
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 183
    :cond_7
    :try_start_2
    const-string/jumbo v1, "media"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 184
    sget-object v2, Landroid/media/Ringtone;->MEDIA_COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v9

    goto :goto_3

    .line 195
    :cond_8
    :try_start_3
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v10

    .line 198
    if-eqz v9, :cond_3

    .line 199
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 198
    :catchall_0
    move-exception v1

    if-eqz v9, :cond_9

    .line 199
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v1

    .line 186
    :catch_0
    move-exception v1

    goto :goto_3
.end method

.method private playFallbackRingtone()Z
    .locals 10

    .prologue
    .line 348
    iget-object v0, p0, Landroid/media/Ringtone;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-static {v1}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 350
    iget-object v0, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    invoke-static {v0}, Landroid/media/RingtoneManager;->getDefaultRingtoneSubIdByUri(Landroid/net/Uri;)I

    move-result v9

    .line 351
    .local v9, "subId":I
    const/4 v0, -0x1

    if-eq v9, v0, :cond_3

    iget-object v0, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    invoke-static {v0, v9}, Landroid/media/RingtoneManager;->getActualRingtoneUriBySubId(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 355
    :try_start_0
    iget-object v0, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1100005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 357
    .local v6, "afd":Landroid/content/res/AssetFileDescriptor;
    if-eqz v6, :cond_2

    .line 358
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    .line 359
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 360
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 366
    :goto_0
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 367
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 368
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 369
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 370
    const/4 v0, 0x1

    .line 384
    .end local v6    # "afd":Landroid/content/res/AssetFileDescriptor;
    .end local v9    # "subId":I
    :goto_1
    return v0

    .line 362
    .restart local v6    # "afd":Landroid/content/res/AssetFileDescriptor;
    .restart local v9    # "subId":I
    :cond_0
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 374
    .end local v6    # "afd":Landroid/content/res/AssetFileDescriptor;
    :catch_0
    move-exception v7

    .line 375
    .local v7, "ioe":Ljava/io/IOException;
    invoke-direct {p0}, Landroid/media/Ringtone;->destroyLocalPlayer()V

    .line 376
    const-string v0, "Ringtone"

    const-string v1, "Failed to open fallback ringtone"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    .end local v7    # "ioe":Ljava/io/IOException;
    .end local v9    # "subId":I
    :cond_1
    :goto_2
    const/4 v0, 0x0

    goto :goto_1

    .line 372
    .restart local v6    # "afd":Landroid/content/res/AssetFileDescriptor;
    .restart local v9    # "subId":I
    :cond_2
    :try_start_1
    const-string v0, "Ringtone"

    const-string v1, "Could not load fallback ringtone"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 377
    .end local v6    # "afd":Landroid/content/res/AssetFileDescriptor;
    :catch_1
    move-exception v8

    .line 378
    .local v8, "nfe":Landroid/content/res/Resources$NotFoundException;
    const-string v0, "Ringtone"

    const-string v1, "Fallback ringtone does not exist"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 381
    .end local v8    # "nfe":Landroid/content/res/Resources$NotFoundException;
    :cond_3
    const-string v0, "Ringtone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "not playing fallback for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method


# virtual methods
.method public getAudioAttributes()Landroid/media/AudioAttributes;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method public getStreamType()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-static {v0}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v0

    return v0
.end method

.method public getTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 146
    iget-object v0, p0, Landroid/media/Ringtone;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/Ringtone;->mTitle:Ljava/lang/String;

    .line 147
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/Ringtone;->mTitle:Ljava/lang/String;

    goto :goto_0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isPlaying()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 332
    iget-object v2, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_0

    .line 333
    iget-object v1, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    .line 343
    :goto_0
    return v1

    .line 334
    :cond_0
    iget-boolean v2, p0, Landroid/media/Ringtone;->mAllowRemote:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/media/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    if-eqz v2, :cond_1

    .line 336
    :try_start_0
    iget-object v2, p0, Landroid/media/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    iget-object v3, p0, Landroid/media/Ringtone;->mRemoteToken:Landroid/os/Binder;

    invoke-interface {v2, v3}, Landroid/media/IRingtonePlayer;->isPlaying(Landroid/os/IBinder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 337
    :catch_0
    move-exception v0

    .line 338
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Ringtone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Problem checking ringtone: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 342
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string v2, "Ringtone"

    const-string v3, "Neither local nor remote playback available"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public play()V
    .locals 5

    .prologue
    .line 265
    iget-object v2, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_1

    .line 268
    iget-object v2, p0, Landroid/media/Ringtone;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-static {v3}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    if-eqz v2, :cond_0

    .line 270
    iget-object v2, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 272
    :cond_1
    iget-boolean v2, p0, Landroid/media/Ringtone;->mAllowRemote:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/media/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    if-eqz v2, :cond_2

    .line 273
    iget-object v2, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getCanonicalUri()Landroid/net/Uri;

    move-result-object v0

    .line 275
    .local v0, "canonicalUri":Landroid/net/Uri;
    :try_start_0
    iget-object v2, p0, Landroid/media/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    iget-object v3, p0, Landroid/media/Ringtone;->mRemoteToken:Landroid/os/Binder;

    iget-object v4, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-interface {v2, v3, v0, v4}, Landroid/media/IRingtonePlayer;->play(Landroid/os/IBinder;Landroid/net/Uri;Landroid/media/AudioAttributes;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 276
    :catch_0
    move-exception v1

    .line 277
    .local v1, "e":Landroid/os/RemoteException;
    invoke-direct {p0}, Landroid/media/Ringtone;->playFallbackRingtone()Z

    move-result v2

    if-nez v2, :cond_0

    .line 278
    const-string v2, "Ringtone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Problem playing ringtone: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 282
    .end local v0    # "canonicalUri":Landroid/net/Uri;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    invoke-direct {p0}, Landroid/media/Ringtone;->playFallbackRingtone()Z

    move-result v2

    if-nez v2, :cond_0

    .line 283
    const-string v2, "Ringtone"

    const-string v3, "Neither local nor remote playback available"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setAudioAttributes(Landroid/media/AudioAttributes;)V
    .locals 2
    .param p1, "attributes"    # Landroid/media/AudioAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 121
    if-nez p1, :cond_0

    .line 122
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid null AudioAttributes for Ringtone"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_0
    iput-object p1, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 127
    iget-object v0, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Landroid/media/Ringtone;->setUri(Landroid/net/Uri;)V

    .line 128
    return-void
.end method

.method public setStreamType(I)V
    .locals 1
    .param p1, "streamType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 98
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v0, p1}, Landroid/media/AudioAttributes$Builder;->setInternalLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/Ringtone;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 101
    return-void
.end method

.method setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 388
    iput-object p1, p0, Landroid/media/Ringtone;->mTitle:Ljava/lang/String;

    .line 389
    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 224
    invoke-direct {p0}, Landroid/media/Ringtone;->destroyLocalPlayer()V

    .line 226
    iput-object p1, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    .line 227
    iget-object v1, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    if-nez v1, :cond_0

    .line 254
    :goto_0
    return-void

    .line 234
    :cond_0
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    .line 236
    :try_start_0
    iget-object v1, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 237
    iget-object v1, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 238
    iget-object v1, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :cond_1
    :goto_1
    iget-object v1, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_2

    .line 249
    const-string v1, "Ringtone"

    const-string v2, "Successfully created local player"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 240
    :catch_0
    move-exception v0

    .line 241
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    invoke-direct {p0}, Landroid/media/Ringtone;->destroyLocalPlayer()V

    .line 242
    iget-boolean v1, p0, Landroid/media/Ringtone;->mAllowRemote:Z

    if-nez v1, :cond_1

    .line 243
    const-string v1, "Ringtone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote playback not allowed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 251
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const-string v1, "Ringtone"

    const-string v2, "Problem opening; delegating to remote player"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 240
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public setVolume(F)V
    .locals 4
    .param p1, "volume"    # F

    .prologue
    .line 307
    iget-object v1, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    .line 308
    iget-object v1, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setVolume(F)V

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 309
    :cond_1
    iget-boolean v1, p0, Landroid/media/Ringtone;->mAllowRemote:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    if-eqz v1, :cond_0

    .line 311
    :try_start_0
    iget-object v1, p0, Landroid/media/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    iget-object v2, p0, Landroid/media/Ringtone;->mRemoteToken:Landroid/os/Binder;

    invoke-interface {v1, v2, p1}, Landroid/media/IRingtonePlayer;->setVolume(Landroid/os/IBinder;F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 312
    :catch_0
    move-exception v0

    .line 313
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Ringtone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Problem setting ringtone volume: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stop()V
    .locals 4

    .prologue
    .line 292
    iget-object v1, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    .line 293
    invoke-direct {p0}, Landroid/media/Ringtone;->destroyLocalPlayer()V

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    iget-boolean v1, p0, Landroid/media/Ringtone;->mAllowRemote:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    if-eqz v1, :cond_0

    .line 296
    :try_start_0
    iget-object v1, p0, Landroid/media/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    iget-object v2, p0, Landroid/media/Ringtone;->mRemoteToken:Landroid/os/Binder;

    invoke-interface {v1, v2}, Landroid/media/IRingtonePlayer;->stop(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 297
    :catch_0
    move-exception v0

    .line 298
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Ringtone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Problem stopping ringtone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
