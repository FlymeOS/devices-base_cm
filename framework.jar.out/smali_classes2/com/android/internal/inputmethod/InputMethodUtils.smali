.class public Lcom/android/internal/inputmethod/InputMethodUtils;
.super Ljava/lang/Object;
.source "InputMethodUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/inputmethod/InputMethodUtils$1;,
        Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;,
        Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field private static final ENGLISH_LOCALE:Ljava/util/Locale;

.field public static final NOT_A_SUBTYPE_ID:I = -0x1

.field private static final NOT_A_SUBTYPE_ID_STR:Ljava/lang/String;

.field private static final SEARCH_ORDER_OF_FALLBACK_LOCALES:[Ljava/util/Locale;

.field public static final SUBTYPE_MODE_ANY:Ljava/lang/String;

.field public static final SUBTYPE_MODE_KEYBOARD:Ljava/lang/String; = "keyboard"

.field public static final SUBTYPE_MODE_VOICE:Ljava/lang/String; = "voice"

.field private static final TAG:Ljava/lang/String; = "InputMethodUtils"

.field private static final TAG_ASCII_CAPABLE:Ljava/lang/String; = "AsciiCapable"

.field private static final TAG_ENABLED_WHEN_DEFAULT_IS_NOT_ASCII_CAPABLE:Ljava/lang/String; = "EnabledWhenDefaultIsNotAsciiCapable"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 52
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/inputmethod/InputMethodUtils;->SUBTYPE_MODE_ANY:Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/util/Locale;

    const-string v1, "en"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/inputmethod/InputMethodUtils;->ENGLISH_LOCALE:Ljava/util/Locale;

    .line 57
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/inputmethod/InputMethodUtils;->NOT_A_SUBTYPE_ID_STR:Ljava/lang/String;

    .line 67
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/util/Locale;

    const/4 v1, 0x0

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Ljava/util/Locale;->UK:Ljava/util/Locale;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/inputmethod/InputMethodUtils;->SEARCH_ORDER_OF_FALLBACK_LOCALES:[Ljava/util/Locale;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    return-void
.end method

.method static synthetic access$000(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Ljava/util/Locale;
    .param p4, "x4"    # Z
    .param p5, "x5"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-static/range {p0 .. p5}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemImeThatHasSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;Z)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Z

    .prologue
    .line 49
    invoke-static {p0, p1, p2}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemAuxilialyImeThatHasAutomaticSubtype(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroid/content/res/Resources;Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/content/res/Resources;
    .param p1, "x1"    # Landroid/view/inputmethod/InputMethodInfo;

    .prologue
    .line 49
    invoke-static {p0, p1}, Lcom/android/internal/inputmethod/InputMethodUtils;->getImplicitlyApplicableSubtypesLocked(Landroid/content/res/Resources;Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/android/internal/inputmethod/InputMethodUtils;->NOT_A_SUBTYPE_ID_STR:Ljava/lang/String;

    return-object v0
.end method

.method public static canAddToLastInputMethod(Landroid/view/inputmethod/InputMethodSubtype;)Z
    .locals 2
    .param p0, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    .prologue
    const/4 v0, 0x1

    .line 671
    if-nez p0, :cond_1

    .line 672
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkIfPackageBelongsToUid(Landroid/app/AppOpsManager;ILjava/lang/String;)Z
    .locals 2
    .param p0, "appOpsManager"    # Landroid/app/AppOpsManager;
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 770
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 771
    const/4 v1, 0x1

    .line 773
    :goto_0
    return v1

    .line 772
    :catch_0
    move-exception v0

    .line 773
    .local v0, "e":Ljava/lang/SecurityException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static containsSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 446
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v0

    .line 447
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 448
    invoke-virtual {p0, v1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v2

    .line 449
    .local v2, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 447
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 452
    :cond_1
    sget-object v3, Lcom/android/internal/inputmethod/InputMethodUtils;->SUBTYPE_MODE_ANY:Ljava/lang/String;

    if-eq p2, v3, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 454
    :cond_2
    const/4 v3, 0x1

    .line 457
    .end local v2    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :goto_1
    return v3

    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static containsSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Ljava/util/Locale;ZLjava/lang/String;)Z
    .locals 7
    .param p0, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "checkCountry"    # Z
    .param p3, "mode"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 414
    if-nez p1, :cond_1

    .line 438
    :cond_0
    :goto_0
    return v4

    .line 417
    :cond_1
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v0

    .line 418
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_0

    .line 419
    invoke-virtual {p0, v1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v2

    .line 420
    .local v2, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    if-eqz p2, :cond_3

    .line 423
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 418
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 427
    :cond_3
    new-instance v3, Ljava/util/Locale;

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/inputmethod/InputMethodUtils;->getLanguageFromLocaleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 429
    .local v3, "subtypeLocale":Ljava/util/Locale;
    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 433
    .end local v3    # "subtypeLocale":Ljava/util/Locale;
    :cond_4
    sget-object v5, Lcom/android/internal/inputmethod/InputMethodUtils;->SUBTYPE_MODE_ANY:Ljava/lang/String;

    if-eq p3, v5, :cond_5

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 435
    :cond_5
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;
    .locals 10
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p2, "mode"    # Ljava/lang/String;
    .param p3, "locale"    # Ljava/lang/String;
    .param p4, "canIgnoreLocaleAsLastResort"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Landroid/view/inputmethod/InputMethodSubtype;"
        }
    .end annotation

    .prologue
    .line 622
    .local p1, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_2

    .line 623
    :cond_0
    const/4 v2, 0x0

    .line 667
    :cond_1
    :goto_0
    return-object v2

    .line 625
    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 626
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget-object v9, v9, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v9}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p3

    .line 628
    :cond_3
    invoke-static {p3}, Lcom/android/internal/inputmethod/InputMethodUtils;->getLanguageFromLocaleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 629
    .local v4, "language":Ljava/lang/String;
    const/4 v5, 0x0

    .line 630
    .local v5, "partialMatchFound":Z
    const/4 v1, 0x0

    .line 631
    .local v1, "applicableSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    const/4 v2, 0x0

    .line 632
    .local v2, "firstMatchedModeSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 633
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_6

    .line 634
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodSubtype;

    .line 635
    .local v6, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v8

    .line 636
    .local v8, "subtypeLocale":Ljava/lang/String;
    invoke-static {v8}, Lcom/android/internal/inputmethod/InputMethodUtils;->getLanguageFromLocaleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 639
    .local v7, "subtypeLanguage":Ljava/lang/String;
    if-eqz p2, :cond_4

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 640
    :cond_4
    if-nez v2, :cond_5

    .line 641
    move-object v2, v6

    .line 643
    :cond_5
    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 645
    move-object v1, v6

    .line 655
    .end local v6    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v7    # "subtypeLanguage":Ljava/lang/String;
    .end local v8    # "subtypeLocale":Ljava/lang/String;
    :cond_6
    if-nez v1, :cond_7

    if-nez p4, :cond_1

    :cond_7
    move-object v2, v1

    .line 667
    goto :goto_0

    .line 647
    .restart local v6    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .restart local v7    # "subtypeLanguage":Ljava/lang/String;
    .restart local v8    # "subtypeLocale":Ljava/lang/String;
    :cond_8
    if-nez v5, :cond_9

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 649
    move-object v1, v6

    .line 650
    const/4 v5, 0x1

    .line 633
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static getApiCallStack()Ljava/lang/String;
    .locals 6

    .prologue
    .line 94
    const-string v0, ""

    .line 96
    .local v0, "apiCallStack":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5}, Ljava/lang/RuntimeException;-><init>()V

    throw v5
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :catch_0
    move-exception v1

    .line 98
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 99
    .local v2, "frames":[Ljava/lang/StackTraceElement;
    const/4 v3, 0x1

    .local v3, "j":I
    :goto_0
    array-length v5, v2

    if-ge v3, v5, :cond_1

    .line 100
    aget-object v5, v2, v3

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    .line 101
    .local v4, "tempCallStack":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 103
    move-object v0, v4

    .line 99
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 104
    :cond_0
    const-string v5, "Transact("

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_1

    .line 106
    move-object v0, v4

    goto :goto_1

    .line 112
    .end local v4    # "tempCallStack":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method public static getDefaultEnabledImes(Landroid/content/Context;ZLjava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isSystemReady"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .local p2, "imis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v3, 0x1

    .line 358
    invoke-static {p2, p0}, Lcom/android/internal/inputmethod/InputMethodUtils;->getFallbackLocaleForDefaultIme(Ljava/util/ArrayList;Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v4

    .line 359
    .local v4, "fallbackLocale":Ljava/util/Locale;
    if-nez p1, :cond_0

    .line 364
    invoke-static {p2, p0, v4}, Lcom/android/internal/inputmethod/InputMethodUtils;->getMinimumKeyboardSetWithoutSystemLocale(Ljava/util/ArrayList;Landroid/content/Context;Ljava/util/Locale;)Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;

    move-result-object v0

    sget-object v6, Lcom/android/internal/inputmethod/InputMethodUtils;->SUBTYPE_MODE_ANY:Ljava/lang/String;

    move-object v1, p2

    move-object v2, p0

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->fillImes(Ljava/util/ArrayList;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->build()Ljava/util/ArrayList;

    move-result-object v0

    .line 376
    :goto_0
    return-object v0

    .line 375
    :cond_0
    invoke-static {p0}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSystemLocaleFromContext(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v9

    .line 376
    .local v9, "systemLocale":Ljava/util/Locale;
    invoke-static {p2, p0, v9, v4}, Lcom/android/internal/inputmethod/InputMethodUtils;->getMinimumKeyboardSetWithSystemLocale(Ljava/util/ArrayList;Landroid/content/Context;Ljava/util/Locale;Ljava/util/Locale;)Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;

    move-result-object v5

    sget-object v11, Lcom/android/internal/inputmethod/InputMethodUtils;->SUBTYPE_MODE_ANY:Ljava/lang/String;

    move-object v6, p2

    move-object v7, p0

    move v8, v3

    move v10, v3

    invoke-virtual/range {v5 .. v11}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->fillImes(Ljava/util/ArrayList;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->fillAuxiliaryImes(Ljava/util/ArrayList;Landroid/content/Context;)Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->build()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public static getFallbackLocaleForDefaultIme(Ljava/util/ArrayList;Landroid/content/Context;)Ljava/util/Locale;
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Locale;"
        }
    .end annotation

    .prologue
    .local p0, "imis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v2, 0x1

    .line 155
    sget-object v10, Lcom/android/internal/inputmethod/InputMethodUtils;->SEARCH_ORDER_OF_FALLBACK_LOCALES:[Ljava/util/Locale;

    .local v10, "arr$":[Ljava/util/Locale;
    array-length v13, v10

    .local v13, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_0
    if-ge v12, v13, :cond_3

    aget-object v3, v10, v12

    .line 156
    .local v3, "fallbackLocale":Ljava/util/Locale;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v11, v0, :cond_2

    .line 157
    invoke-virtual {p0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    const-string v5, "keyboard"

    move-object v1, p1

    move v4, v2

    invoke-static/range {v0 .. v5}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemImeThatHasSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    .end local v3    # "fallbackLocale":Ljava/util/Locale;
    .end local v11    # "i":I
    :cond_0
    :goto_2
    return-object v3

    .line 156
    .restart local v3    # "fallbackLocale":Ljava/util/Locale;
    .restart local v11    # "i":I
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 155
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 166
    .end local v3    # "fallbackLocale":Ljava/util/Locale;
    .end local v11    # "i":I
    :cond_3
    sget-object v10, Lcom/android/internal/inputmethod/InputMethodUtils;->SEARCH_ORDER_OF_FALLBACK_LOCALES:[Ljava/util/Locale;

    array-length v13, v10

    const/4 v12, 0x0

    :goto_3
    if-ge v12, v13, :cond_5

    aget-object v3, v10, v12

    .line 167
    .restart local v3    # "fallbackLocale":Ljava/util/Locale;
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_4
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v11, v0, :cond_4

    .line 168
    invoke-virtual {p0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    const/4 v6, 0x0

    const-string v9, "keyboard"

    move-object v5, p1

    move-object v7, v3

    move v8, v2

    invoke-static/range {v4 .. v9}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemImeThatHasSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 166
    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 175
    .end local v3    # "fallbackLocale":Ljava/util/Locale;
    .end local v11    # "i":I
    :cond_5
    const-string v0, "InputMethodUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found no fallback locale. imis="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public static getImeAndSubtypeDisplayName(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Ljava/lang/CharSequence;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p2, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    .prologue
    .line 749
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 750
    .local v0, "imiLabel":Ljava/lang/CharSequence;
    if-eqz p2, :cond_0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p2, p0, v3, v4}, Landroid/view/inputmethod/InputMethodSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v3, 0x1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ""

    :goto_0
    aput-object v1, v2, v3

    invoke-static {v2}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0    # "imiLabel":Ljava/lang/CharSequence;
    :cond_0
    return-object v0

    .restart local v0    # "imiLabel":Ljava/lang/CharSequence;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static getImplicitlyApplicableSubtypesLocked(Landroid/content/res/Resources;Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;
    .locals 20
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    .prologue
    .line 523
    invoke-static/range {p1 .. p1}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypes(Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;

    move-result-object v15

    .line 524
    .local v15, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v17

    .line 525
    .local v17, "systemLocale":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_1

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 593
    :cond_0
    :goto_0
    return-object v7

    .line 526
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v16

    .line 527
    .local v16, "systemLanguage":Ljava/lang/String;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 529
    .local v5, "applicableModeAndSubtypesMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v4

    .line 530
    .local v4, "N":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v4, :cond_3

    .line 532
    invoke-interface {v15, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/inputmethod/InputMethodSubtype;

    .line 533
    .local v14, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v14}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 534
    invoke-virtual {v14}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v13

    .line 535
    .local v13, "mode":Ljava/lang/String;
    invoke-virtual {v5, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_2

    .line 536
    invoke-virtual {v5, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    .end local v13    # "mode":Ljava/lang/String;
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 540
    .end local v14    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_3
    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v18

    if-lez v18, :cond_4

    .line 541
    new-instance v7, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    .line 543
    :cond_4
    const/4 v8, 0x0

    :goto_2
    if-ge v8, v4, :cond_8

    .line 544
    invoke-interface {v15, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/inputmethod/InputMethodSubtype;

    .line 545
    .restart local v14    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v14}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v12

    .line 546
    .local v12, "locale":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v13

    .line 547
    .restart local v13    # "mode":Ljava/lang/String;
    invoke-static {v12}, Lcom/android/internal/inputmethod/InputMethodUtils;->getLanguageFromLocaleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 562
    .local v10, "language":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 563
    invoke-virtual {v5, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodSubtype;

    .line 565
    .local v6, "applicableSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    if-eqz v6, :cond_7

    .line 566
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 543
    .end local v6    # "applicableSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_5
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 567
    .restart local v6    # "applicableSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_6
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 569
    :cond_7
    invoke-virtual {v5, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 572
    .end local v6    # "applicableSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v10    # "language":Ljava/lang/String;
    .end local v12    # "locale":Ljava/lang/String;
    .end local v13    # "mode":Ljava/lang/String;
    .end local v14    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_8
    const-string v18, "keyboard"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/inputmethod/InputMethodSubtype;

    .line 574
    .local v9, "keyboardSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    new-instance v7, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 576
    .local v7, "applicableSubtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    if-eqz v9, :cond_a

    const-string v18, "AsciiCapable"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/view/inputmethod/InputMethodSubtype;->containsExtraValueKey(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_a

    .line 577
    const/4 v8, 0x0

    :goto_4
    if-ge v8, v4, :cond_a

    .line 578
    invoke-interface {v15, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/inputmethod/InputMethodSubtype;

    .line 579
    .restart local v14    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v14}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v13

    .line 580
    .restart local v13    # "mode":Ljava/lang/String;
    const-string v18, "keyboard"

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    const-string v18, "EnabledWhenDefaultIsNotAsciiCapable"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/view/inputmethod/InputMethodSubtype;->containsExtraValueKey(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 582
    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 577
    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 586
    .end local v13    # "mode":Ljava/lang/String;
    .end local v14    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_a
    if-nez v9, :cond_0

    .line 587
    const-string v18, "keyboard"

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    move/from16 v3, v19

    invoke-static {v0, v15, v1, v2, v3}, Lcom/android/internal/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v11

    .line 589
    .local v11, "lastResortKeyboardSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    if-eqz v11, :cond_0

    .line 590
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public static getLanguageFromLocaleString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "locale"    # Ljava/lang/String;

    .prologue
    .line 601
    const/16 v1, 0x5f

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 602
    .local v0, "idx":I
    if-gez v0, :cond_0

    .line 605
    .end local p0    # "locale":Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "locale":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static getMinimumKeyboardSetWithSystemLocale(Ljava/util/ArrayList;Landroid/content/Context;Ljava/util/Locale;Ljava/util/Locale;)Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "systemLocale"    # Ljava/util/Locale;
    .param p3, "fallbackLocale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;",
            "Landroid/content/Context;",
            "Ljava/util/Locale;",
            "Ljava/util/Locale;",
            ")",
            "Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;"
        }
    .end annotation

    .prologue
    .local p0, "imis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v7, 0x0

    const/4 v3, 0x1

    .line 320
    new-instance v0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;-><init>(Lcom/android/internal/inputmethod/InputMethodUtils$1;)V

    .line 321
    .local v0, "builder":Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;
    const-string v6, "keyboard"

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->fillImes(Ljava/util/ArrayList;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;

    .line 323
    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 353
    :cond_0
    :goto_0
    return-object v0

    .line 326
    :cond_1
    const-string v6, "keyboard"

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move v5, v7

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->fillImes(Ljava/util/ArrayList;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;

    .line 328
    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 331
    const-string v6, "keyboard"

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->fillImes(Ljava/util/ArrayList;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;

    .line 333
    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 336
    const-string v6, "keyboard"

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move v5, v7

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->fillImes(Ljava/util/ArrayList;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;

    .line 338
    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 341
    const-string v10, "keyboard"

    move-object v4, v0

    move-object v5, p0

    move-object v6, p1

    move-object v8, p3

    move v9, v3

    invoke-virtual/range {v4 .. v10}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->fillImes(Ljava/util/ArrayList;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;

    .line 343
    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 346
    const-string v6, "keyboard"

    move-object v1, p0

    move-object v2, p1

    move v3, v7

    move-object v4, p3

    move v5, v7

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->fillImes(Ljava/util/ArrayList;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;

    .line 348
    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 351
    const-string v1, "InputMethodUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No software keyboard is found. imis="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " systemLocale="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " fallbackLocale="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private static getMinimumKeyboardSetWithoutSystemLocale(Ljava/util/ArrayList;Landroid/content/Context;Ljava/util/Locale;)Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fallbackLocale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;",
            "Landroid/content/Context;",
            "Ljava/util/Locale;",
            ")",
            "Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;"
        }
    .end annotation

    .prologue
    .local p0, "imis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 281
    new-instance v0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;-><init>(Lcom/android/internal/inputmethod/InputMethodUtils$1;)V

    .line 282
    .local v0, "builder":Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;
    const-string v6, "keyboard"

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->fillImes(Ljava/util/ArrayList;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;

    .line 284
    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 304
    :cond_0
    :goto_0
    return-object v0

    .line 287
    :cond_1
    const-string v10, "keyboard"

    move-object v4, v0

    move-object v5, p0

    move-object v6, p1

    move-object v8, p2

    move v9, v3

    invoke-virtual/range {v4 .. v10}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->fillImes(Ljava/util/ArrayList;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;

    .line 289
    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 292
    const-string v6, "keyboard"

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move v5, v7

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->fillImes(Ljava/util/ArrayList;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;

    .line 294
    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 297
    const-string v6, "keyboard"

    move-object v1, p0

    move-object v2, p1

    move v3, v7

    move-object v4, p2

    move v5, v7

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->fillImes(Ljava/util/ArrayList;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;

    .line 299
    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 302
    const-string v1, "InputMethodUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No software keyboard is found. imis="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " fallbackLocale="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getMostApplicableDefaultIME(Ljava/util/List;)Landroid/view/inputmethod/InputMethodInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;)",
            "Landroid/view/inputmethod/InputMethodInfo;"
        }
    .end annotation

    .prologue
    .line 483
    .local p0, "enabledImes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 484
    :cond_0
    const/4 v2, 0x0

    .line 501
    :cond_1
    :goto_0
    return-object v2

    .line 487
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 488
    .local v1, "i":I
    const/4 v0, -0x1

    .line 489
    .local v0, "firstFoundSystemIme":I
    :cond_3
    :goto_1
    if-lez v1, :cond_5

    .line 490
    add-int/lit8 v1, v1, -0x1

    .line 491
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 492
    .local v2, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-static {v2}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemImeThatHasEnglishKeyboardSubtype(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->isAuxiliaryIme()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 496
    :cond_4
    if-gez v0, :cond_3

    invoke-static {v2}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->isAuxiliaryIme()Z

    move-result v3

    if-nez v3, :cond_3

    .line 498
    move v0, v1

    goto :goto_1

    .line 501
    .end local v2    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_5
    const/4 v3, 0x0

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    move-object v2, v3

    goto :goto_0
.end method

.method public static getOverridingImplicitlyEnabledSubtypes(Landroid/view/inputmethod/InputMethodInfo;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .param p0, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p1, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/inputmethod/InputMethodInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    .prologue
    .line 471
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 472
    .local v3, "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v2

    .line 473
    .local v2, "subtypeCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 474
    invoke-virtual {p0, v0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v1

    .line 475
    .local v1, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 476
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 473
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 479
    .end local v1    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_1
    return-object v3
.end method

.method public static getStackTrace()Ljava/lang/String;
    .locals 6

    .prologue
    .line 80
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .local v3, "sb":Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4}, Ljava/lang/RuntimeException;-><init>()V

    throw v4
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 86
    .local v1, "frames":[Ljava/lang/StackTraceElement;
    const/4 v2, 0x1

    .local v2, "j":I
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_0

    .line 87
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v1, v2

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I
    .locals 4
    .param p0, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p1, "subtypeHashCode"    # I

    .prologue
    .line 509
    if-eqz p0, :cond_1

    .line 510
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v2

    .line 511
    .local v2, "subtypeCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 512
    invoke-virtual {p0, v0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v1

    .line 513
    .local v1, "ims":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v3

    if-ne p1, v3, :cond_0

    .line 518
    .end local v0    # "i":I
    .end local v1    # "ims":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v2    # "subtypeCount":I
    :goto_1
    return v0

    .line 511
    .restart local v0    # "i":I
    .restart local v1    # "ims":Landroid/view/inputmethod/InputMethodSubtype;
    .restart local v2    # "subtypeCount":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 518
    .end local v0    # "i":I
    .end local v1    # "ims":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v2    # "subtypeCount":I
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static getSubtypes(Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;
    .locals 4
    .param p0, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    .prologue
    .line 461
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 462
    .local v2, "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v1

    .line 463
    .local v1, "subtypeCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 464
    invoke-virtual {p0, v0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 463
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 466
    :cond_0
    return-object v2
.end method

.method public static getSystemLocaleFromContext(Landroid/content/Context;)Ljava/util/Locale;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 202
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :goto_0
    return-object v1

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, "ex":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isSystemAuxilialyImeThatHasAutomaticSubtype(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;Z)Z
    .locals 5
    .param p0, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "checkDefaultAttribute"    # Z

    .prologue
    const/4 v3, 0x0

    .line 181
    invoke-static {p0}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 197
    :cond_0
    :goto_0
    return v3

    .line 184
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p0, p1}, Landroid/view/inputmethod/InputMethodInfo;->isDefault(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 187
    :cond_2
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->isAuxiliaryIme()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 190
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v2

    .line 191
    .local v2, "subtypeCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_0

    .line 192
    invoke-virtual {p0, v0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v1

    .line 193
    .local v1, "s":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 194
    const/4 v3, 0x1

    goto :goto_0

    .line 191
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z
    .locals 1
    .param p0, "inputMethod"    # Landroid/view/inputmethod/InputMethodInfo;

    .prologue
    .line 117
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSystemImeThatHasEnglishKeyboardSubtype(Landroid/view/inputmethod/InputMethodInfo;)Z
    .locals 2
    .param p0, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 127
    invoke-static {p0}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    const/4 v0, 0x0

    .line 130
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/android/internal/inputmethod/InputMethodUtils;->ENGLISH_LOCALE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "keyboard"

    invoke-static {p0, v0, v1}, Lcom/android/internal/inputmethod/InputMethodUtils;->containsSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private static isSystemImeThatHasSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Z
    .locals 2
    .param p0, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "checkDefaultAttribute"    # Z
    .param p3, "requiredLocale"    # Ljava/util/Locale;
    .param p4, "checkCountry"    # Z
    .param p5, "requiredSubtypeMode"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 137
    invoke-static {p0}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 146
    :cond_0
    :goto_0
    return v0

    .line 140
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p0, p1}, Landroid/view/inputmethod/InputMethodInfo;->isDefault(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    :cond_2
    invoke-static {p0, p3, p4, p5}, Lcom/android/internal/inputmethod/InputMethodUtils;->containsSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Ljava/util/Locale;ZLjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isValidSubtypeId(Landroid/view/inputmethod/InputMethodInfo;I)Z
    .locals 2
    .param p0, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p1, "subtypeHashCode"    # I

    .prologue
    .line 505
    invoke-static {p0, p1}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidSystemDefaultIme(ZLandroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;)Z
    .locals 4
    .param p0, "isSystemReady"    # Z
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p2, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 390
    if-nez p0, :cond_1

    .line 409
    :cond_0
    :goto_0
    return v0

    .line 393
    :cond_1
    invoke-static {p1}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 396
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getIsDefaultResourceId()I

    move-result v1

    if-eqz v1, :cond_2

    .line 398
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/view/inputmethod/InputMethodInfo;->isDefault(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/internal/inputmethod/InputMethodUtils;->SUBTYPE_MODE_ANY:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/android/internal/inputmethod/InputMethodUtils;->containsSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_2

    .line 401
    const/4 v0, 0x1

    goto :goto_0

    .line 403
    :catch_0
    move-exception v1

    .line 406
    :cond_2
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 407
    const-string v1, "InputMethodUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found no subtypes in a system IME: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static setDisabledUntilUsed(Landroid/content/pm/PackageManager;Ljava/lang/String;)V
    .locals 3
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 732
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v0

    .line 733
    .local v0, "state":I
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 738
    :cond_0
    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 745
    :cond_1
    return-void
.end method

.method public static setNonSelectedSystemImesDisabledUntilUsed(Landroid/content/pm/PackageManager;Ljava/util/List;)V
    .locals 16
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 680
    .local p1, "enabledImis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x107003d

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v12

    .line 682
    .local v12, "systemImesDisabledUntilUsed":[Ljava/lang/String;
    if-eqz v12, :cond_0

    array-length v13, v12

    if-nez v13, :cond_1

    .line 729
    :cond_0
    return-void

    .line 686
    :cond_1
    invoke-static {}, Landroid/view/textservice/TextServicesManager;->getInstance()Landroid/view/textservice/TextServicesManager;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v3

    .line 688
    .local v3, "currentSpellChecker":Landroid/view/textservice/SpellCheckerInfo;
    move-object v2, v12

    .local v2, "arr$":[Ljava/lang/String;
    array-length v10, v2

    .local v10, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v10, :cond_0

    aget-object v11, v2, v6

    .line 692
    .local v11, "packageName":Ljava/lang/String;
    const/4 v5, 0x0

    .line 693
    .local v5, "enabledIme":Z
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v13

    if-ge v9, v13, :cond_2

    .line 694
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodInfo;

    .line 695
    .local v7, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 696
    const/4 v5, 0x1

    .line 700
    .end local v7    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_2
    if-eqz v5, :cond_5

    .line 688
    :cond_3
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 693
    .restart local v7    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 704
    .end local v7    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_5
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/view/textservice/SpellCheckerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 712
    :cond_6
    const/4 v1, 0x0

    .line 714
    .local v1, "ai":Landroid/content/pm/ApplicationInfo;
    const v13, 0x8000

    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v13}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 719
    :goto_3
    if-eqz v1, :cond_3

    .line 723
    iget v13, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v13, v13, 0x1

    if-eqz v13, :cond_7

    const/4 v8, 0x1

    .line 724
    .local v8, "isSystemPackage":Z
    :goto_4
    if-eqz v8, :cond_3

    .line 727
    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/android/internal/inputmethod/InputMethodUtils;->setDisabledUntilUsed(Landroid/content/pm/PackageManager;Ljava/lang/String;)V

    goto :goto_2

    .line 716
    .end local v8    # "isSystemPackage":Z
    :catch_0
    move-exception v4

    .line 717
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v13, "InputMethodUtils"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "NameNotFoundException: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 723
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_7
    const/4 v8, 0x0

    goto :goto_4
.end method
