.class Lcom/android/server/accounts/AccountManagerService$UserAccounts;
.super Ljava/lang/Object;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accounts/AccountManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UserAccounts"
.end annotation


# instance fields
.field private final accountCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation
.end field

.field private final authTokenCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/accounts/Account;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final cacheLock:Ljava/lang/Object;

.field private final credentialsPermissionNotificationIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/util/Pair",
            "<",
            "Landroid/util/Pair",
            "<",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final openHelper:Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;

.field private final previousNameCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/accounts/Account;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final signinRequiredNotificationIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/accounts/Account;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final userDataCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/accounts/Account;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final userId:I


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .prologue
    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->credentialsPermissionNotificationIds:Ljava/util/HashMap;

    .line 188
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->signinRequiredNotificationIds:Ljava/util/HashMap;

    .line 190
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    .line 192
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    .line 195
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userDataCache:Ljava/util/HashMap;

    .line 198
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->authTokenCache:Ljava/util/HashMap;

    .line 212
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->previousNameCache:Ljava/util/HashMap;

    .line 216
    iput p2, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I

    .line 217
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 218
    :try_start_0
    new-instance v0, Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;

    invoke-direct {v0, p1, p2}, Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;

    .line 219
    monitor-exit v1

    .line 220
    return-void

    .line 219
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic access$1100(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->credentialsPermissionNotificationIds:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->signinRequiredNotificationIds:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .prologue
    .line 182
    iget v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userDataCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->authTokenCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->previousNameCache:Ljava/util/HashMap;

    return-object v0
.end method
