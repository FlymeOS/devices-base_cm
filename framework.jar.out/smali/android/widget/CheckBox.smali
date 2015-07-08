.class public Landroid/widget/CheckBox;
.super Landroid/widget/CompoundButton;
.source "CheckBox.java"


# instance fields
.field private mMzCheckBoxHook:Lcom/meizu/widget/CheckBoxAnimHook;

# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 64
    const v0, 0x101006c

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 73
    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 78
    const-class v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 79
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 83
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 84
    const-class v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 85
    return-void
.end method

.method public setActivated(Z)V
    .locals 1
    .param p1, "activated"    # Z

    .prologue
    iget-object v0, p0, Landroid/widget/CheckBox;->mMzCheckBoxHook:Lcom/meizu/widget/CheckBoxAnimHook;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setActivated(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/CheckBox;->mMzCheckBoxHook:Lcom/meizu/widget/CheckBoxAnimHook;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/CheckBoxAnimHook;->setActivated(Z)V

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    iget-object v0, p0, Landroid/widget/CheckBox;->mMzCheckBoxHook:Lcom/meizu/widget/CheckBoxAnimHook;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/CheckBox;->mMzCheckBoxHook:Lcom/meizu/widget/CheckBoxAnimHook;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/CheckBoxAnimHook;->setChecked(Z)V

    goto :goto_0
.end method

.method public setIsAnimation(Z)V
    .locals 1
    .param p1, "isAnimation"    # Z

    .prologue
    iget-object v0, p0, Landroid/widget/CheckBox;->mMzCheckBoxHook:Lcom/meizu/widget/CheckBoxAnimHook;

    if-nez v0, :cond_0

    new-instance v0, Lcom/meizu/widget/CheckBoxAnimHook;

    invoke-direct {v0, p0}, Lcom/meizu/widget/CheckBoxAnimHook;-><init>(Landroid/widget/CheckBox;)V

    iput-object v0, p0, Landroid/widget/CheckBox;->mMzCheckBoxHook:Lcom/meizu/widget/CheckBoxAnimHook;

    :cond_0
    iget-object v0, p0, Landroid/widget/CheckBox;->mMzCheckBoxHook:Lcom/meizu/widget/CheckBoxAnimHook;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/CheckBoxAnimHook;->setIsAnimation(Z)V

    return-void
.end method

.method public superSetActivated(Z)V
    .locals 0
    .param p1, "activated"    # Z

    .prologue
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setActivated(Z)V

    return-void
.end method

.method public superSetChecked(Z)V
    .locals 0
    .param p1, "checked"    # Z

    .prologue
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    return-void
.end method
