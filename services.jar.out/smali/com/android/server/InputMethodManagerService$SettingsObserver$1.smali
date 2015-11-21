.class Lcom/android/server/InputMethodManagerService$SettingsObserver$1;
.super Landroid/database/ContentObserver;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/InputMethodManagerService$SettingsObserver;-><init>(Lcom/android/server/InputMethodManagerService;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/InputMethodManagerService$SettingsObserver;

.field final synthetic val$this$0:Lcom/android/server/InputMethodManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/InputMethodManagerService$SettingsObserver;Landroid/os/Handler;Lcom/android/server/InputMethodManagerService;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 434
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver$1;->this$1:Lcom/android/server/InputMethodManagerService$SettingsObserver;

    iput-object p3, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver$1;->val$this$0:Lcom/android/server/InputMethodManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 436
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver$1;->this$1:Lcom/android/server/InputMethodManagerService$SettingsObserver;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/InputMethodManagerService;->updateFromSettingsLocked(Z)V

    .line 437
    return-void
.end method
