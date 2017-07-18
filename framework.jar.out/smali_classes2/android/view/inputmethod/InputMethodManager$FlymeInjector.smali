.class final Landroid/view/inputmethod/InputMethodManager$FlymeInjector;
.super Ljava/lang/Object;
.source "InputMethodManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/InputMethodManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlymeInjector"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/inputmethod/InputMethodManager$FlymeInjector$FlymeHandler;
    }
.end annotation


# static fields
.field private static final MZ_KEY_THEME:Ljava/lang/String; = "com.meizu.input.theme"

.field static final MZ_VALUE_THEME_DARK:Ljava/lang/String; = "black"

.field static final MZ_VALUE_THEME_LIGHT:Ljava/lang/String; = "white"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static adjustEditorInfo(Landroid/view/inputmethod/InputMethodManager;)V
    .locals 4
    .param p0, "imm"    # Landroid/view/inputmethod/InputMethodManager;

    .prologue
    .line 2441
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->getCurEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    .line 2444
    .local v1, "tba":Landroid/view/inputmethod/EditorInfo;
    iget v2, v1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v3, 0x10000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    .line 2445
    iget v2, v1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v3, 0x2000000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 2448
    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->getPrivateImeOptionsMap()Ljava/util/Map;

    move-result-object v0

    .line 2449
    .local v0, "privateImeOptionsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, v1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/view/inputmethod/EditorInfo;->splitPrivateImeOptions(Ljava/lang/String;Ljava/util/Map;)Z

    .line 2450
    const-string/jumbo v2, "com.meizu.input.theme"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2440
    :cond_1
    :goto_0
    return-void

    .line 2452
    :cond_2
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->getMzInputTheme()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2454
    const-string/jumbo v2, "com.meizu.input.theme"

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->getMzInputTheme()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2455
    invoke-static {v0}, Landroid/view/inputmethod/EditorInfo;->makePrivateImeOptions(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    goto :goto_0
.end method

.method static initFlymeExtFields(Landroid/view/inputmethod/InputMethodManager;)V
    .locals 3
    .param p0, "imm"    # Landroid/view/inputmethod/InputMethodManager;

    .prologue
    .line 2430
    new-instance v1, Landroid/view/inputmethod/InputMethodManager$FlymeInjector$FlymeHandler;

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mMainLooper:Landroid/os/Looper;

    invoke-direct {v1, v2, p0}, Landroid/view/inputmethod/InputMethodManager$FlymeInjector$FlymeHandler;-><init>(Landroid/os/Looper;Landroid/view/inputmethod/InputMethodManager;)V

    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mFlymeHandler:Landroid/os/Handler;

    .line 2431
    const-string/jumbo v1, "white"

    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mFlymeInputTheme:Ljava/lang/String;

    .line 2432
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/inputmethod/InputMethodManager;->mFlymeInputShown:Z

    .line 2433
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mFlymeInputShownChangeListenerList:Ljava/util/List;

    .line 2434
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mFlymePrivateImeOptionsMap:Ljava/util/Map;

    .line 2436
    const-string/jumbo v1, "input_method"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2437
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/internal/view/MzIInputMethodManagerProxy;->asInterfaceMz(Landroid/os/IBinder;)Lcom/android/internal/view/MzIInputMethodManager;

    move-result-object v1

    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mFlymeInputMethodManagerService:Lcom/android/internal/view/MzIInputMethodManager;

    .line 2429
    return-void
.end method

.method static onWindowFocus(Landroid/view/inputmethod/InputMethodManager;Z)Z
    .locals 1
    .param p0, "imm"    # Landroid/view/inputmethod/InputMethodManager;
    .param p1, "forceNewFocus"    # Z

    .prologue
    .line 2467
    iget v0, p0, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    if-gez v0, :cond_0

    .line 2468
    const/4 p1, 0x1

    .line 2470
    .end local p1    # "forceNewFocus":Z
    :cond_0
    return p1
.end method

.method static windowDismissed(Landroid/view/inputmethod/InputMethodManager;)V
    .locals 1
    .param p0, "imm"    # Landroid/view/inputmethod/InputMethodManager;

    .prologue
    .line 2461
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2462
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->finishInputLocked()V

    .line 2459
    :cond_0
    return-void
.end method
