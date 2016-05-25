.class public Lcom/android/internal/app/RestrictionsPinActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "RestrictionsPinActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field private mCancelButton:Landroid/widget/Button;

.field private mCountdownRunnable:Ljava/lang/Runnable;

.field protected mHasRestrictionsPin:Z

.field private mOkButton:Landroid/widget/Button;

.field protected mPinErrorMessage:Landroid/widget/TextView;

.field protected mPinText:Landroid/widget/EditText;

.field protected mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 163
    new-instance v0, Lcom/android/internal/app/RestrictionsPinActivity$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/RestrictionsPinActivity$1;-><init>(Lcom/android/internal/app/RestrictionsPinActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/RestrictionsPinActivity;->mCountdownRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/app/RestrictionsPinActivity;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/RestrictionsPinActivity;
    .param p1, "x1"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/internal/app/RestrictionsPinActivity;->updatePinTimer(I)Z

    move-result v0

    return v0
.end method

.method private updatePinTimer(I)Z
    .locals 8
    .param p1, "pinTimerMs"    # I

    .prologue
    const/4 v6, 0x0

    .line 102
    if-gez p1, :cond_0

    .line 103
    iget-object v3, p0, Lcom/android/internal/app/RestrictionsPinActivity;->mUserManager:Landroid/os/UserManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->checkRestrictionsChallenge(Ljava/lang/String;)I

    move-result p1

    .line 106
    :cond_0
    const/16 v3, 0xc8

    if-lt p1, v3, :cond_2

    .line 108
    const v3, 0xea60

    if-gt p1, v3, :cond_1

    .line 109
    add-int/lit16 v3, p1, 0xc8

    div-int/lit16 v2, v3, 0x3e8

    .line 110
    .local v2, "seconds":I
    invoke-virtual {p0}, Lcom/android/internal/app/RestrictionsPinActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1140018

    invoke-virtual {v3, v4, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, "formatString":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/app/RestrictionsPinActivity;->mPinErrorMessage:Landroid/widget/TextView;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    .end local v1    # "formatString":Ljava/lang/String;
    .end local v2    # "seconds":I
    :goto_0
    const/4 v0, 0x0

    .line 118
    .local v0, "enableInput":Z
    iget-object v3, p0, Lcom/android/internal/app/RestrictionsPinActivity;->mPinErrorMessage:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 119
    iget-object v3, p0, Lcom/android/internal/app/RestrictionsPinActivity;->mPinText:Landroid/widget/EditText;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v3, p0, Lcom/android/internal/app/RestrictionsPinActivity;->mPinText:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/android/internal/app/RestrictionsPinActivity;->mCountdownRunnable:Ljava/lang/Runnable;

    const/16 v5, 0x3e8

    invoke-static {v5, p1}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v3, v4, v6, v7}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 125
    :goto_1
    iget-object v3, p0, Lcom/android/internal/app/RestrictionsPinActivity;->mPinText:Landroid/widget/EditText;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 126
    invoke-virtual {p0, v0}, Lcom/android/internal/app/RestrictionsPinActivity;->setPositiveButtonState(Z)V

    .line 127
    return v0

    .line 115
    .end local v0    # "enableInput":Z
    :cond_1
    iget-object v3, p0, Lcom/android/internal/app/RestrictionsPinActivity;->mPinErrorMessage:Landroid/widget/TextView;

    const v4, 0x104074b

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 122
    :cond_2
    const/4 v0, 0x1

    .line 123
    .restart local v0    # "enableInput":Z
    iget-object v3, p0, Lcom/android/internal/app/RestrictionsPinActivity;->mPinErrorMessage:Landroid/widget/TextView;

    const v4, 0x1040744

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 155
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 145
    return-void
.end method

.method protected initUi()V
    .locals 4

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/internal/app/RestrictionsPinActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 62
    .local v0, "ap":Lcom/android/internal/app/AlertController$AlertParams;
    const v2, 0x1040742

    invoke-virtual {p0, v2}, Lcom/android/internal/app/RestrictionsPinActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 63
    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Lcom/android/internal/app/RestrictionsPinActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 65
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x10900b1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 67
    iget-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v3, 0x1020374

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/app/RestrictionsPinActivity;->mPinErrorMessage:Landroid/widget/TextView;

    .line 68
    iget-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v3, 0x1020373

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/internal/app/RestrictionsPinActivity;->mPinText:Landroid/widget/EditText;

    .line 69
    iget-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v3, 0x1020376

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/internal/app/RestrictionsPinActivity;->mOkButton:Landroid/widget/Button;

    .line 70
    iget-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v3, 0x1020375

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/internal/app/RestrictionsPinActivity;->mCancelButton:Landroid/widget/Button;

    .line 72
    iget-object v2, p0, Lcom/android/internal/app/RestrictionsPinActivity;->mPinText:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 74
    iget-object v2, p0, Lcom/android/internal/app/RestrictionsPinActivity;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v2, p0, Lcom/android/internal/app/RestrictionsPinActivity;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/internal/app/RestrictionsPinActivity;->mOkButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 175
    invoke-virtual {p0}, Lcom/android/internal/app/RestrictionsPinActivity;->performPositiveButtonAction()V

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/RestrictionsPinActivity;->mCancelButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 177
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/RestrictionsPinActivity;->setResult(I)V

    .line 178
    invoke-virtual {p0}, Lcom/android/internal/app/RestrictionsPinActivity;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const-string v0, "user"

    invoke-virtual {p0, v0}, Lcom/android/internal/app/RestrictionsPinActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/internal/app/RestrictionsPinActivity;->mUserManager:Landroid/os/UserManager;

    .line 55
    iget-object v0, p0, Lcom/android/internal/app/RestrictionsPinActivity;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->hasRestrictionsChallenge()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/app/RestrictionsPinActivity;->mHasRestrictionsPin:Z

    .line 56
    invoke-virtual {p0}, Lcom/android/internal/app/RestrictionsPinActivity;->initUi()V

    .line 57
    invoke-virtual {p0}, Lcom/android/internal/app/RestrictionsPinActivity;->setupAlert()V

    .line 58
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/android/internal/app/RestrictionsPinActivity;->performPositiveButtonAction()V

    .line 160
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 83
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    .line 85
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/internal/app/RestrictionsPinActivity;->setPositiveButtonState(Z)V

    .line 86
    iget-object v1, p0, Lcom/android/internal/app/RestrictionsPinActivity;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->hasRestrictionsChallenge()Z

    move-result v0

    .line 87
    .local v0, "hasPin":Z
    if-eqz v0, :cond_1

    .line 88
    iget-object v1, p0, Lcom/android/internal/app/RestrictionsPinActivity;->mPinErrorMessage:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 89
    iget-object v1, p0, Lcom/android/internal/app/RestrictionsPinActivity;->mPinText:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 90
    invoke-direct {p0, v3}, Lcom/android/internal/app/RestrictionsPinActivity;->updatePinTimer(I)Z

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/app/RestrictionsPinActivity;->verifyingPin()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    invoke-virtual {p0, v3}, Lcom/android/internal/app/RestrictionsPinActivity;->setResult(I)V

    .line 93
    invoke-virtual {p0}, Lcom/android/internal/app/RestrictionsPinActivity;->finish()V

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 149
    iget-object v1, p0, Lcom/android/internal/app/RestrictionsPinActivity;->mPinText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 150
    .local v0, "pin":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/internal/app/RestrictionsPinActivity;->setPositiveButtonState(Z)V

    .line 151
    return-void

    .line 150
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected performPositiveButtonAction()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 131
    iget-object v1, p0, Lcom/android/internal/app/RestrictionsPinActivity;->mUserManager:Landroid/os/UserManager;

    iget-object v2, p0, Lcom/android/internal/app/RestrictionsPinActivity;->mPinText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->checkRestrictionsChallenge(Ljava/lang/String;)I

    move-result v0

    .line 132
    .local v0, "result":I
    if-ne v0, v3, :cond_1

    .line 133
    invoke-virtual {p0, v3}, Lcom/android/internal/app/RestrictionsPinActivity;->setResult(I)V

    .line 134
    invoke-virtual {p0}, Lcom/android/internal/app/RestrictionsPinActivity;->finish()V

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    if-ltz v0, :cond_0

    .line 136
    iget-object v1, p0, Lcom/android/internal/app/RestrictionsPinActivity;->mPinErrorMessage:Landroid/widget/TextView;

    const v2, 0x1040744

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 137
    iget-object v1, p0, Lcom/android/internal/app/RestrictionsPinActivity;->mPinErrorMessage:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 138
    invoke-direct {p0, v0}, Lcom/android/internal/app/RestrictionsPinActivity;->updatePinTimer(I)Z

    .line 139
    iget-object v1, p0, Lcom/android/internal/app/RestrictionsPinActivity;->mPinText:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected setPositiveButtonState(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/internal/app/RestrictionsPinActivity;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 99
    return-void
.end method

.method protected verifyingPin()Z
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x1

    return v0
.end method
