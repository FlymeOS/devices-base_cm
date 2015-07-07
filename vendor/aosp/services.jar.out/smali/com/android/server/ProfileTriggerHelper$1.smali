.class Lcom/android/server/ProfileTriggerHelper$1;
.super Landroid/database/ContentObserver;
.source "ProfileTriggerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ProfileTriggerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ProfileTriggerHelper;


# direct methods
.method constructor <init>(Lcom/android/server/ProfileTriggerHelper;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/server/ProfileTriggerHelper$1;->this$0:Lcom/android/server/ProfileTriggerHelper;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/server/ProfileTriggerHelper$1;->this$0:Lcom/android/server/ProfileTriggerHelper;

    invoke-virtual {v0}, Lcom/android/server/ProfileTriggerHelper;->updateEnabled()V

    .line 53
    return-void
.end method
