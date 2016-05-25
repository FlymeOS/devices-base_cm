.class public Lcom/android/server/content/SyncStorageEngine$EndPoint;
.super Ljava/lang/Object;
.source "SyncStorageEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncStorageEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EndPoint"
.end annotation


# static fields
.field public static final USER_ALL_PROVIDER_ALL_ACCOUNTS_ALL:Lcom/android/server/content/SyncStorageEngine$EndPoint;


# instance fields
.field final account:Landroid/accounts/Account;

.field final provider:Ljava/lang/String;

.field final service:Landroid/content/ComponentName;

.field final target_provider:Z

.field final target_service:Z

.field final userId:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 226
    new-instance v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    const/4 v1, -0x1

    invoke-direct {v0, v2, v2, v1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->USER_ALL_PROVIDER_ALL_ACCOUNTS_ALL:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    return-void
.end method

.method public constructor <init>(Landroid/accounts/Account;Ljava/lang/String;I)V
    .locals 1
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "provider"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    iput-object p1, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 246
    iput-object p2, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 247
    iput p3, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 248
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    .line 249
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_service:Z

    .line 250
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_provider:Z

    .line 251
    return-void
.end method

.method public constructor <init>(Landroid/content/ComponentName;I)V
    .locals 1
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .prologue
    const/4 v0, 0x0

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    iput-object p1, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    .line 237
    iput p2, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 238
    iput-object v0, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 239
    iput-object v0, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 240
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_service:Z

    .line 241
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_provider:Z

    .line 242
    return-void
.end method


# virtual methods
.method public matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z
    .locals 6
    .param p1, "spec"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .prologue
    const/4 v5, -0x1

    const/4 v2, 0x0

    .line 260
    iget v3, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    iget v4, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    if-eq v3, v4, :cond_1

    iget v3, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    if-eq v3, v5, :cond_1

    iget v3, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    if-eq v3, v5, :cond_1

    .line 282
    :cond_0
    :goto_0
    return v2

    .line 265
    :cond_1
    iget-boolean v3, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_service:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_service:Z

    if-eqz v3, :cond_2

    .line 266
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    iget-object v3, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 267
    :cond_2
    iget-boolean v3, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_provider:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_provider:Z

    if-eqz v3, :cond_0

    .line 269
    iget-object v3, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    if-nez v3, :cond_3

    .line 270
    const/4 v0, 0x1

    .line 275
    .local v0, "accountsMatch":Z
    :goto_1
    iget-object v3, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 276
    const/4 v1, 0x1

    .line 280
    .local v1, "providersMatch":Z
    :goto_2
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .line 272
    .end local v0    # "accountsMatch":Z
    .end local v1    # "providersMatch":Z
    :cond_3
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v4, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    invoke-virtual {v3, v4}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v0

    .restart local v0    # "accountsMatch":Z
    goto :goto_1

    .line 278
    :cond_4
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .restart local v1    # "providersMatch":Z
    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 287
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-boolean v1, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_provider:Z

    if-eqz v1, :cond_2

    .line 288
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    if-nez v1, :cond_0

    const-string v1, "ALL ACCS"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, "ALL PDRS"

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ":u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 288
    :cond_0
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    goto :goto_1

    .line 291
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_service:Z

    if-eqz v1, :cond_3

    .line 292
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 295
    :cond_3
    const-string v1, "invalid target"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method
