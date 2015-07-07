.class Lcom/android/internal/telephony/SubscriptionHelper$1;
.super Landroid/database/ContentObserver;
.source "SubscriptionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SubscriptionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SubscriptionHelper;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SubscriptionHelper;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/internal/telephony/SubscriptionHelper$1;->this$0:Lcom/android/internal/telephony/SubscriptionHelper;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfUpdate"    # Z

    .prologue
    .line 85
    const-string v0, "NwMode Observer onChange hit !!!"

    # invokes: Lcom/android/internal/telephony/SubscriptionHelper;->logd(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/internal/telephony/SubscriptionHelper;->access$000(Ljava/lang/String;)V

    .line 86
    # getter for: Lcom/android/internal/telephony/SubscriptionHelper;->mNwModeUpdated:Z
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionHelper;->access$100()Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionHelper$1;->this$0:Lcom/android/internal/telephony/SubscriptionHelper;

    const/4 v1, 0x1

    # invokes: Lcom/android/internal/telephony/SubscriptionHelper;->updateNwModesInSubIdTable(Z)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/SubscriptionHelper;->access$200(Lcom/android/internal/telephony/SubscriptionHelper;Z)V

    goto :goto_0
.end method
