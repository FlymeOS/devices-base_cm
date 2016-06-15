.class final Landroid/preference/EditTextPreference$FlymeInjector;
.super Ljava/lang/Object;
.source "EditTextPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/EditTextPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlymeInjector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static flymeSetDialogStyleEditText(Landroid/preference/EditTextPreference;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p0, "editTextPreference"    # Landroid/preference/EditTextPreference;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 258
    invoke-virtual {p1}, Landroid/content/Context;->isDeviceDefaultTheme()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 259
    invoke-static {p1}, Landroid/preference/EditTextPreference$FlymeInjector;->getFlymeAlertDialogTheme(Landroid/content/Context;)I

    move-result v1

    .line 260
    .local v1, "editTextContextTheme":I
    if-eqz v1, :cond_0

    .line 261
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 262
    .end local p1    # "context":Landroid/content/Context;
    .local v0, "context":Landroid/content/Context;
    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, v0, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v2}, Landroid/preference/EditTextPreference;->flymeSetFieldEditText(Landroid/widget/EditText;)V

    move-object p1, v0

    .line 265
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "editTextContextTheme":I
    .restart local p1    # "context":Landroid/content/Context;
    :cond_0
    return-void
.end method

.method static flymeSetEditTextSelection(Landroid/preference/EditTextPreference;)V
    .locals 3
    .param p0, "editTextPreference"    # Landroid/preference/EditTextPreference;

    .prologue
    .line 274
    invoke-virtual {p0}, Landroid/preference/EditTextPreference;->flymeGetFieldEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 275
    .local v0, "editText":Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 276
    const/4 v1, 0x0

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setSelection(II)V

    .line 278
    :cond_0
    return-void
.end method

.method private static getFlymeAlertDialogTheme(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 268
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 269
    .local v0, "typedValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010309

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 270
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    return v1
.end method
