.class public Lcom/android/server/media/MediaSessionStack;
.super Ljava/lang/Object;
.source "MediaSessionStack.java"


# static fields
.field private static final ALWAYS_PRIORITY_STATES:[I

.field private static final TRANSITION_PRIORITY_STATES:[I


# instance fields
.field private mCachedActiveList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/media/MediaSessionRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mCachedButtonReceiver:Lcom/android/server/media/MediaSessionRecord;

.field private mCachedDefault:Lcom/android/server/media/MediaSessionRecord;

.field private mCachedTransportControlList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/media/MediaSessionRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mCachedVolumeDefault:Lcom/android/server/media/MediaSessionRecord;

.field private mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

.field private final mSessions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/media/MediaSessionRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/media/MediaSessionStack;->ALWAYS_PRIORITY_STATES:[I

    .line 45
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/media/MediaSessionStack;->TRANSITION_PRIORITY_STATES:[I

    return-void

    .line 36
    nop

    :array_0
    .array-data 4
        0x4
        0x5
        0x9
        0xa
    .end array-data

    .line 45
    :array_1
    .array-data 4
        0x6
        0x8
        0x3
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/ArrayList;

    return-void
.end method

.method private clearCache()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 331
    iput-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedDefault:Lcom/android/server/media/MediaSessionRecord;

    .line 332
    iput-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedVolumeDefault:Lcom/android/server/media/MediaSessionRecord;

    .line 333
    iput-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedButtonReceiver:Lcom/android/server/media/MediaSessionRecord;

    .line 334
    iput-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedActiveList:Ljava/util/ArrayList;

    .line 335
    iput-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedTransportControlList:Ljava/util/ArrayList;

    .line 336
    return-void
.end method

.method private containsState(I[I)Z
    .locals 2
    .param p1, "state"    # I
    .param p2, "states"    # [I

    .prologue
    .line 322
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 323
    aget v1, p2, v0

    if-ne v1, p1, :cond_0

    .line 324
    const/4 v1, 0x1

    .line 327
    :goto_1
    return v1

    .line 322
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 327
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getPriorityListLocked(ZII)Ljava/util/ArrayList;
    .locals 12
    .param p1, "activeOnly"    # Z
    .param p2, "withFlags"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/media/MediaSessionRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 252
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 253
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/media/MediaSessionRecord;>;"
    const/4 v2, 0x0

    .line 254
    .local v2, "lastLocalIndex":I
    const/4 v1, 0x0

    .line 255
    .local v1, "lastActiveIndex":I
    const/4 v3, 0x0

    .line 257
    .local v3, "lastPublishedIndex":I
    iget-object v7, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 258
    .local v6, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v6, :cond_5

    .line 259
    iget-object v7, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/media/MediaSessionRecord;

    .line 261
    .local v5, "session":Lcom/android/server/media/MediaSessionRecord;
    const/4 v7, -0x1

    if-eq p3, v7, :cond_1

    invoke-virtual {v5}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v7

    if-eq p3, v7, :cond_1

    .line 258
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 265
    :cond_1
    invoke-virtual {v5}, Lcom/android/server/media/MediaSessionRecord;->getFlags()J

    move-result-wide v8

    int-to-long v10, p2

    and-long/2addr v8, v10

    int-to-long v10, p2

    cmp-long v7, v8, v10

    if-nez v7, :cond_0

    .line 269
    invoke-virtual {v5}, Lcom/android/server/media/MediaSessionRecord;->isActive()Z

    move-result v7

    if-nez v7, :cond_2

    .line 270
    if-nez p1, :cond_0

    .line 273
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 278
    :cond_2
    invoke-virtual {v5}, Lcom/android/server/media/MediaSessionRecord;->isSystemPriority()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 281
    const/4 v7, 0x0

    invoke-virtual {v4, v7, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 282
    add-int/lit8 v2, v2, 0x1

    .line 283
    add-int/lit8 v1, v1, 0x1

    .line 284
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 285
    :cond_3
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lcom/android/server/media/MediaSessionRecord;->isPlaybackActive(Z)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 289
    invoke-virtual {v4, v2, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 290
    add-int/lit8 v2, v2, 0x1

    .line 291
    add-int/lit8 v1, v1, 0x1

    .line 292
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 302
    :cond_4
    invoke-virtual {v4, v3, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 303
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 307
    .end local v5    # "session":Lcom/android/server/media/MediaSessionRecord;
    :cond_5
    return-object v4
.end method

.method private shouldUpdatePriority(II)Z
    .locals 2
    .param p1, "oldState"    # I
    .param p2, "newState"    # I

    .prologue
    const/4 v0, 0x1

    .line 311
    sget-object v1, Lcom/android/server/media/MediaSessionStack;->ALWAYS_PRIORITY_STATES:[I

    invoke-direct {p0, p2, v1}, Lcom/android/server/media/MediaSessionStack;->containsState(I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 318
    :cond_0
    :goto_0
    return v0

    .line 314
    :cond_1
    sget-object v1, Lcom/android/server/media/MediaSessionStack;->TRANSITION_PRIORITY_STATES:[I

    invoke-direct {p0, p1, v1}, Lcom/android/server/media/MediaSessionStack;->containsState(I[I)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/android/server/media/MediaSessionStack;->TRANSITION_PRIORITY_STATES:[I

    invoke-direct {p0, p2, v1}, Lcom/android/server/media/MediaSessionStack;->containsState(I[I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 318
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addSession(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 1
    .param p1, "record"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionStack;->clearCache()V

    .line 68
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 225
    const/4 v5, -0x1

    invoke-direct {p0, v6, v6, v5}, Lcom/android/server/media/MediaSessionStack;->getPriorityListLocked(ZII)Ljava/util/ArrayList;

    move-result-object v4

    .line 227
    .local v4, "sortedSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/media/MediaSessionRecord;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 228
    .local v0, "count":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Global priority session is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/media/MediaSessionStack;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 229
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Sessions Stack - have "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " sessions:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 230
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 231
    .local v2, "indent":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 232
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/MediaSessionRecord;

    .line 233
    .local v3, "record":Lcom/android/server/media/MediaSessionRecord;
    invoke-virtual {v3, p1, v2}, Lcom/android/server/media/MediaSessionRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 234
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 231
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 236
    .end local v3    # "record":Lcom/android/server/media/MediaSessionRecord;
    :cond_0
    return-void
.end method

.method public getActiveSessions(I)Ljava/util/ArrayList;
    .locals 2
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/media/MediaSessionRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedActiveList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 128
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/media/MediaSessionStack;->getPriorityListLocked(ZII)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedActiveList:Ljava/util/ArrayList;

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedActiveList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDefaultMediaButtonSession(I)Lcom/android/server/media/MediaSessionRecord;
    .locals 3
    .param p1, "userId"    # I

    .prologue
    const/4 v2, 0x1

    .line 174
    iget-object v1, p0, Lcom/android/server/media/MediaSessionStack;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/media/MediaSessionStack;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionRecord;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/android/server/media/MediaSessionStack;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    .line 185
    :goto_0
    return-object v1

    .line 177
    :cond_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionStack;->mCachedButtonReceiver:Lcom/android/server/media/MediaSessionRecord;

    if-eqz v1, :cond_1

    .line 178
    iget-object v1, p0, Lcom/android/server/media/MediaSessionStack;->mCachedButtonReceiver:Lcom/android/server/media/MediaSessionRecord;

    goto :goto_0

    .line 180
    :cond_1
    invoke-direct {p0, v2, v2, p1}, Lcom/android/server/media/MediaSessionStack;->getPriorityListLocked(ZII)Ljava/util/ArrayList;

    move-result-object v0

    .line 182
    .local v0, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/media/MediaSessionRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 183
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaSessionRecord;

    iput-object v1, p0, Lcom/android/server/media/MediaSessionStack;->mCachedButtonReceiver:Lcom/android/server/media/MediaSessionRecord;

    .line 185
    :cond_2
    iget-object v1, p0, Lcom/android/server/media/MediaSessionStack;->mCachedButtonReceiver:Lcom/android/server/media/MediaSessionRecord;

    goto :goto_0
.end method

.method public getDefaultRemoteSession(I)Lcom/android/server/media/MediaSessionRecord;
    .locals 6
    .param p1, "userId"    # I

    .prologue
    .line 208
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5, p1}, Lcom/android/server/media/MediaSessionStack;->getPriorityListLocked(ZII)Ljava/util/ArrayList;

    move-result-object v2

    .line 210
    .local v2, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/media/MediaSessionRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 211
    .local v3, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 212
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaSessionRecord;

    .line 213
    .local v1, "record":Lcom/android/server/media/MediaSessionRecord;
    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionRecord;->getPlaybackType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 217
    .end local v1    # "record":Lcom/android/server/media/MediaSessionRecord;
    :goto_1
    return-object v1

    .line 211
    .restart local v1    # "record":Lcom/android/server/media/MediaSessionRecord;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 217
    .end local v1    # "record":Lcom/android/server/media/MediaSessionRecord;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getDefaultSession(I)Lcom/android/server/media/MediaSessionRecord;
    .locals 3
    .param p1, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 157
    iget-object v1, p0, Lcom/android/server/media/MediaSessionStack;->mCachedDefault:Lcom/android/server/media/MediaSessionRecord;

    if-eqz v1, :cond_0

    .line 158
    iget-object v1, p0, Lcom/android/server/media/MediaSessionStack;->mCachedDefault:Lcom/android/server/media/MediaSessionRecord;

    .line 164
    :goto_0
    return-object v1

    .line 160
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v1, v2, p1}, Lcom/android/server/media/MediaSessionStack;->getPriorityListLocked(ZII)Ljava/util/ArrayList;

    move-result-object v0

    .line 161
    .local v0, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/media/MediaSessionRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 162
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaSessionRecord;

    goto :goto_0

    .line 164
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDefaultVolumeSession(I)Lcom/android/server/media/MediaSessionRecord;
    .locals 6
    .param p1, "userId"    # I

    .prologue
    const/4 v5, 0x0

    .line 189
    iget-object v4, p0, Lcom/android/server/media/MediaSessionStack;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/media/MediaSessionStack;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v4}, Lcom/android/server/media/MediaSessionRecord;->isActive()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 190
    iget-object v1, p0, Lcom/android/server/media/MediaSessionStack;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    .line 204
    :goto_0
    return-object v1

    .line 192
    :cond_0
    iget-object v4, p0, Lcom/android/server/media/MediaSessionStack;->mCachedVolumeDefault:Lcom/android/server/media/MediaSessionRecord;

    if-eqz v4, :cond_1

    .line 193
    iget-object v1, p0, Lcom/android/server/media/MediaSessionStack;->mCachedVolumeDefault:Lcom/android/server/media/MediaSessionRecord;

    goto :goto_0

    .line 195
    :cond_1
    const/4 v4, 0x1

    invoke-direct {p0, v4, v5, p1}, Lcom/android/server/media/MediaSessionStack;->getPriorityListLocked(ZII)Ljava/util/ArrayList;

    move-result-object v2

    .line 196
    .local v2, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/media/MediaSessionRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 197
    .local v3, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_3

    .line 198
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaSessionRecord;

    .line 199
    .local v1, "record":Lcom/android/server/media/MediaSessionRecord;
    invoke-virtual {v1, v5}, Lcom/android/server/media/MediaSessionRecord;->isPlaybackActive(Z)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 200
    iput-object v1, p0, Lcom/android/server/media/MediaSessionStack;->mCachedVolumeDefault:Lcom/android/server/media/MediaSessionRecord;

    goto :goto_0

    .line 197
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 204
    .end local v1    # "record":Lcom/android/server/media/MediaSessionRecord;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTransportControlSessions(I)Ljava/util/ArrayList;
    .locals 2
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/media/MediaSessionRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedTransportControlList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 144
    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/media/MediaSessionStack;->getPriorityListLocked(ZII)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedTransportControlList:Ljava/util/ArrayList;

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedTransportControlList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isGlobalPriorityActive()Z
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionRecord;->isActive()Z

    move-result v0

    goto :goto_0
.end method

.method public onPlaystateChange(Lcom/android/server/media/MediaSessionRecord;II)Z
    .locals 2
    .param p1, "record"    # Lcom/android/server/media/MediaSessionRecord;
    .param p2, "oldState"    # I
    .param p3, "newState"    # I

    .prologue
    const/4 v0, 0x0

    .line 92
    invoke-direct {p0, p2, p3}, Lcom/android/server/media/MediaSessionStack;->shouldUpdatePriority(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 93
    iget-object v1, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 94
    iget-object v1, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 95
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionStack;->clearCache()V

    .line 96
    const/4 v0, 0x1

    .line 101
    :cond_0
    :goto_0
    return v0

    .line 97
    :cond_1
    invoke-static {p3}, Landroid/media/session/MediaSession;->isActiveState(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 99
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/media/MediaSessionStack;->mCachedVolumeDefault:Lcom/android/server/media/MediaSessionRecord;

    goto :goto_0
.end method

.method public onSessionStateChange(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 4
    .param p1, "record"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 111
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getFlags()J

    move-result-wide v0

    const-wide/32 v2, 0x10000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 112
    iput-object p1, p0, Lcom/android/server/media/MediaSessionStack;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    .line 116
    :cond_0
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionStack;->clearCache()V

    .line 117
    return-void
.end method

.method public removeSession(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 1
    .param p1, "record"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 77
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    if-ne p1, v0, :cond_0

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    .line 80
    :cond_0
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionStack;->clearCache()V

    .line 81
    return-void
.end method
