.class public Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;
.super Ljava/lang/Object;
.source "InputMethodSubtypeSwitchingController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;,
        Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;,
        Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;,
        Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;,
        Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final NOT_A_SUBTYPE_ID:I = -0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;

.field private final mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

.field private mSubtypeList:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;


# direct methods
.method static synthetic -wrap0(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)I
    .locals 1
    .param p0, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p1, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    .prologue
    invoke-static {p0, p1}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->calculateSubtypeId(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->TAG:Ljava/lang/String;

    .line 48
    return-void
.end method

.method private constructor <init>(Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;Landroid/content/Context;)V
    .locals 0
    .param p1, "settings"    # Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 512
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 513
    iput-object p1, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 514
    invoke-virtual {p0, p2}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->resetCircularListLocked(Landroid/content/Context;)V

    .line 512
    return-void
.end method

.method private static calculateSubtypeId(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)I
    .locals 1
    .param p0, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p1, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    .prologue
    .line 262
    if-eqz p1, :cond_0

    .line 263
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v0

    .line 262
    invoke-static {p0, v0}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v0

    :goto_0
    return v0

    .line 263
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static createInstanceLocked(Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;Landroid/content/Context;)Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;
    .locals 1
    .param p0, "settings"    # Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 519
    new-instance v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;-><init>(Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public dump(Landroid/util/Printer;)V
    .locals 1
    .param p1, "pw"    # Landroid/util/Printer;

    .prologue
    .line 556
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->mController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;

    if-eqz v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->mController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;->dump(Landroid/util/Printer;)V

    .line 555
    :goto_0
    return-void

    .line 559
    :cond_0
    const-string/jumbo v0, "    mController=null"

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getNextInputMethodLocked(ZLandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    .locals 2
    .param p1, "onlyCurrentIme"    # Z
    .param p2, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p3, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    .prologue
    const/4 v1, 0x0

    .line 540
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->mController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;

    if-nez v0, :cond_0

    .line 544
    return-object v1

    .line 546
    :cond_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->mController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;->getNextInputMethod(ZLandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    move-result-object v0

    return-object v0
.end method

.method public getSortedInputMethodAndSubtypeListLocked(ZZZ)Ljava/util/List;
    .locals 1
    .param p1, "showSubtypes"    # Z
    .param p2, "includingAuxiliarySubtypes"    # Z
    .param p3, "isScreenLocked"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 551
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->mSubtypeList:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;->getSortedInputMethodAndSubtypeList(ZZZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public onUserActionLocked(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 1
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p2, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    .prologue
    .line 523
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->mController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;

    if-nez v0, :cond_0

    .line 527
    return-void

    .line 529
    :cond_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->mController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;->onUserActionLocked(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 522
    return-void
.end method

.method public resetCircularListLocked(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 533
    new-instance v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;

    iget-object v1, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-direct {v0, p1, v1}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;-><init>(Landroid/content/Context;Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;)V

    iput-object v0, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->mSubtypeList:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;

    .line 534
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->mController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;

    .line 535
    iget-object v1, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->mSubtypeList:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;

    invoke-virtual {v1}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;->getSortedInputMethodAndSubtypeList()Ljava/util/List;

    move-result-object v1

    .line 534
    invoke-static {v0, v1}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;->createFrom(Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;Ljava/util/List;)Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->mController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;

    .line 532
    return-void
.end method
