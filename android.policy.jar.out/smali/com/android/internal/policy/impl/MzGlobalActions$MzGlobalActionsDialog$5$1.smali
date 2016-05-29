.class Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog$5$1;
.super Ljava/lang/Thread;
.source "MzGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog$5;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog$5;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 357
    iput-object p1, p0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog$5$1;->this$2:Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog$5;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 361
    :try_start_0
    # getter for: Lcom/android/internal/policy/impl/MzGlobalActions;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/internal/policy/impl/MzGlobalActions;->access$600()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    :goto_0
    return-void

    .line 362
    :catch_0
    move-exception v0

    .line 363
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "MzGlobalActions"

    const-string v2, "Can\'t perform master clear/factory reset"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
