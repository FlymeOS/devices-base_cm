.class abstract Landroid/widget/TimePicker$AbstractTimePickerDelegate;
.super Ljava/lang/Object;
.source "TimePicker.java"

# interfaces
.implements Landroid/widget/TimePicker$TimePickerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TimePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AbstractTimePickerDelegate"
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mCurrentLocale:Ljava/util/Locale;

.field protected mDelegator:Landroid/widget/TimePicker;

.field protected mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

.field protected mValidationCallback:Landroid/widget/TimePicker$ValidationCallback;


# direct methods
.method public constructor <init>(Landroid/widget/TimePicker;Landroid/content/Context;)V
    .locals 1
    .param p1, "delegator"    # Landroid/widget/TimePicker;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    iput-object p1, p0, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mDelegator:Landroid/widget/TimePicker;

    .line 325
    iput-object p2, p0, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mContext:Landroid/content/Context;

    .line 328
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    .line 323
    return-void
.end method


# virtual methods
.method protected onValidationChanged(Z)V
    .locals 1
    .param p1, "valid"    # Z

    .prologue
    .line 344
    iget-object v0, p0, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mValidationCallback:Landroid/widget/TimePicker$ValidationCallback;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mValidationCallback:Landroid/widget/TimePicker$ValidationCallback;

    invoke-interface {v0, p1}, Landroid/widget/TimePicker$ValidationCallback;->onValidationChanged(Z)V

    .line 343
    :cond_0
    return-void
.end method

.method public setCurrentLocale(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 332
    iget-object v0, p0, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    return-void

    .line 335
    :cond_0
    iput-object p1, p0, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mCurrentLocale:Ljava/util/Locale;

    .line 331
    return-void
.end method

.method public setValidationCallback(Landroid/widget/TimePicker$ValidationCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/widget/TimePicker$ValidationCallback;

    .prologue
    .line 340
    iput-object p1, p0, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mValidationCallback:Landroid/widget/TimePicker$ValidationCallback;

    .line 339
    return-void
.end method
