.class Landroid/view/inputmethod/InputMethodManager$FlymeInjector;
.super Ljava/lang/Object;
.source "InputMethodManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/InputMethodManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FlymeInjector"
.end annotation


# static fields
.field private static final MZ_KEY_THEME:Ljava/lang/String; = "com.meizu.input.theme"

.field private static final MZ_VALUE_THEME_DARK:Ljava/lang/String; = "black"

.field private static final MZ_VALUE_THEME_LIGHT:Ljava/lang/String; = "white"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static initFlymeExtFields(Landroid/view/inputmethod/InputMethodManager;)V
    .locals 3
    .param p0, "imm"    # Landroid/view/inputmethod/InputMethodManager;

    .prologue
    .line 2410
    new-instance v1, Landroid/view/inputmethod/InputMethodManager$MzHandler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mMainLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Landroid/view/inputmethod/InputMethodManager$MzHandler;-><init>(Landroid/view/inputmethod/InputMethodManager;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mMzHandler:Landroid/view/inputmethod/InputMethodManager$MzHandler;

    .line 2411
    const-string/jumbo v1, "white"

    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mMzInputTheme:Ljava/lang/String;

    .line 2412
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/inputmethod/InputMethodManager;->mMzInputShown:Z

    .line 2413
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mMzInputShownChangeListenerList:Ljava/util/List;

    .line 2414
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mMzPrivateImeOptionsMap:Ljava/util/Map;

    .line 2416
    const-string v1, "input_method"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2417
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/internal/view/MzIInputMethodManagerProxy;->asInterfaceMz(Landroid/os/IBinder;)Lcom/android/internal/view/MzIInputMethodManager;

    move-result-object v1

    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mMzService:Lcom/android/internal/view/MzIInputMethodManager;

    .line 2418
    return-void
.end method

.method static mzAdjustEditorInfo(Landroid/view/inputmethod/InputMethodManager;)V
    .locals 6
    .param p0, "imm"    # Landroid/view/inputmethod/InputMethodManager;

    .prologue
    .line 2421
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->getCurEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v2

    .line 2424
    .local v2, "tba":Landroid/view/inputmethod/EditorInfo;
    iget v4, v2, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v5, 0x10000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    .line 2425
    iget v4, v2, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v5, 0x2000000

    or-int/2addr v4, v5

    iput v4, v2, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 2428
    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->getPrivateImeOptionsMap()Ljava/util/Map;

    move-result-object v1

    .line 2429
    .local v1, "privateImeOptionsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, v2, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    invoke-static {v4, v1}, Landroid/view/inputmethod/EditorInfo;->splitPrivateImeOptions(Ljava/lang/String;Ljava/util/Map;)Z

    .line 2430
    const-string v4, "com.meizu.input.theme"

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2447
    :cond_1
    :goto_0
    return-void

    .line 2432
    :cond_2
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->getMzInputTheme()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 2434
    const-string v4, "com.meizu.input.theme"

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->getMzInputTheme()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2435
    invoke-static {v1}, Landroid/view/inputmethod/EditorInfo;->makePrivateImeOptions(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    goto :goto_0

    .line 2438
    :cond_3
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->getServedView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v3

    .line 2439
    .local v3, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v3, :cond_1

    .line 2440
    invoke-virtual {v3}, Landroid/view/ViewRootImpl;->mzGetMeizuFlags()I

    move-result v0

    .line 2441
    .local v0, "meizuFlags":I
    and-int/lit16 v4, v0, 0x800

    if-nez v4, :cond_1

    .line 2442
    const-string v4, "com.meizu.input.theme"

    const-string v5, "black"

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2443
    invoke-static {v1}, Landroid/view/inputmethod/EditorInfo;->makePrivateImeOptions(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    goto :goto_0
.end method
