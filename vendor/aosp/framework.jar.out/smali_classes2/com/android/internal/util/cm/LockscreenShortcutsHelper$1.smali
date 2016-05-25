.class Lcom/android/internal/util/cm/LockscreenShortcutsHelper$1;
.super Landroid/database/ContentObserver;
.source "LockscreenShortcutsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/cm/LockscreenShortcutsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/util/cm/LockscreenShortcutsHelper;


# direct methods
.method constructor <init>(Lcom/android/internal/util/cm/LockscreenShortcutsHelper;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/internal/util/cm/LockscreenShortcutsHelper$1;->this$0:Lcom/android/internal/util/cm/LockscreenShortcutsHelper;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/internal/util/cm/LockscreenShortcutsHelper$1;->this$0:Lcom/android/internal/util/cm/LockscreenShortcutsHelper;

    # invokes: Lcom/android/internal/util/cm/LockscreenShortcutsHelper;->fetchTargets()V
    invoke-static {v0}, Lcom/android/internal/util/cm/LockscreenShortcutsHelper;->access$000(Lcom/android/internal/util/cm/LockscreenShortcutsHelper;)V

    .line 64
    iget-object v0, p0, Lcom/android/internal/util/cm/LockscreenShortcutsHelper$1;->this$0:Lcom/android/internal/util/cm/LockscreenShortcutsHelper;

    # getter for: Lcom/android/internal/util/cm/LockscreenShortcutsHelper;->mListener:Lcom/android/internal/util/cm/LockscreenShortcutsHelper$OnChangeListener;
    invoke-static {v0}, Lcom/android/internal/util/cm/LockscreenShortcutsHelper;->access$100(Lcom/android/internal/util/cm/LockscreenShortcutsHelper;)Lcom/android/internal/util/cm/LockscreenShortcutsHelper$OnChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/android/internal/util/cm/LockscreenShortcutsHelper$1;->this$0:Lcom/android/internal/util/cm/LockscreenShortcutsHelper;

    # getter for: Lcom/android/internal/util/cm/LockscreenShortcutsHelper;->mListener:Lcom/android/internal/util/cm/LockscreenShortcutsHelper$OnChangeListener;
    invoke-static {v0}, Lcom/android/internal/util/cm/LockscreenShortcutsHelper;->access$100(Lcom/android/internal/util/cm/LockscreenShortcutsHelper;)Lcom/android/internal/util/cm/LockscreenShortcutsHelper$OnChangeListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/util/cm/LockscreenShortcutsHelper$OnChangeListener;->onChange()V

    .line 67
    :cond_0
    return-void
.end method
