.class Lcom/android/server/accessibility/AccessibilityManagerService$UserState$1;
.super Ljava/lang/Object;
.source "AccessibilityManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .prologue
    .line 3795
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState$1;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3798
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState$1;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->-get3(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Landroid/os/IBinder;

    move-result-object v0

    .line 3799
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState$1;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->-get0(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v1

    const/4 v2, 0x0

    .line 3798
    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 3800
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState$1;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    invoke-static {v0, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->-set2(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 3801
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState$1;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->-get1(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3802
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState$1;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->-get1(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->binderDied()V

    .line 3797
    :cond_0
    return-void
.end method
