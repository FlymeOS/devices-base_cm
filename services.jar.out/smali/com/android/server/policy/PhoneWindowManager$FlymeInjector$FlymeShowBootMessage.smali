.class final Lcom/android/server/policy/PhoneWindowManager$FlymeInjector$FlymeShowBootMessage;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager$FlymeInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlymeShowBootMessage"
.end annotation


# instance fields
.field private mMsg:Ljava/lang/CharSequence;

.field private mPwm:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManager;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "pwm"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p2, "msg"    # Ljava/lang/CharSequence;

    .prologue
    .line 7368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7369
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$FlymeInjector$FlymeShowBootMessage;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    .line 7370
    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager$FlymeInjector$FlymeShowBootMessage;->mMsg:Ljava/lang/CharSequence;

    .line 7368
    return-void
.end method

.method private showFlymeBootMessage()V
    .locals 11

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 7380
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager$FlymeInjector$FlymeShowBootMessage;->mMsg:Ljava/lang/CharSequence;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager$FlymeInjector$FlymeShowBootMessage;->mMsg:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7381
    :goto_0
    if-eqz v3, :cond_2

    const-string/jumbo v6, "flymeTrain"

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-eq v6, v10, :cond_2

    .line 7383
    :try_start_0
    const-string/jumbo v6, "flymeTrain"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 7384
    .local v0, "arry1":[Ljava/lang/String;
    const/4 v6, 0x0

    aget-object v3, v0, v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7392
    .end local v0    # "arry1":[Ljava/lang/String;
    :goto_1
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager$FlymeInjector$FlymeShowBootMessage;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v6, v6, Lcom/android/server/policy/PhoneWindowManager;->mFlymeBootMsgText:Landroid/widget/TextView;

    if-nez v6, :cond_0

    .line 7393
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager$FlymeInjector$FlymeShowBootMessage;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v6, v6, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 7394
    .local v2, "inflater":Landroid/view/LayoutInflater;
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager$FlymeInjector$FlymeShowBootMessage;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    sget v7, Lcom/flyme/internal/R$layout;->android_upgrading_layout:I

    invoke-virtual {v2, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    iput-object v7, v6, Lcom/android/server/policy/PhoneWindowManager;->mFlymeBootLayout:Landroid/view/View;

    .line 7395
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager$FlymeInjector$FlymeShowBootMessage;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager$FlymeInjector$FlymeShowBootMessage;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v6, v6, Lcom/android/server/policy/PhoneWindowManager;->mFlymeBootLayout:Landroid/view/View;

    sget v8, Lcom/flyme/internal/R$id;->upgrade_main_msg:I

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v7, Lcom/android/server/policy/PhoneWindowManager;->mFlymeBootMsgText:Landroid/widget/TextView;

    .line 7396
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager$FlymeInjector$FlymeShowBootMessage;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager$FlymeInjector$FlymeShowBootMessage;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v6, v6, Lcom/android/server/policy/PhoneWindowManager;->mFlymeBootLayout:Landroid/view/View;

    sget v8, Lcom/flyme/internal/R$id;->dex_opt_progressbar:I

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/meizu/widget/CircleProgressBar;

    iput-object v6, v7, Lcom/android/server/policy/PhoneWindowManager;->mFlymeBootMsgBar:Landroid/widget/ProgressBar;

    .line 7397
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager$FlymeInjector$FlymeShowBootMessage;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v6, v6, Lcom/android/server/policy/PhoneWindowManager;->mFlymeBootMsgBar:Landroid/widget/ProgressBar;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 7398
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager$FlymeInjector$FlymeShowBootMessage;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v6, v6, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "window"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    .line 7399
    .local v4, "wm":Landroid/view/WindowManager;
    new-instance v5, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v5}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 7401
    .local v5, "wmParams":Landroid/view/WindowManager$LayoutParams;
    const/4 v6, 0x5

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 7402
    const/16 v6, 0x7e5

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 7403
    const/16 v6, 0x11

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 7404
    iput v10, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 7405
    iput v10, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 7407
    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v6, v6, 0x8

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 7408
    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v6, v6, 0x10

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 7409
    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v6, v6, 0x100

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 7411
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager$FlymeInjector$FlymeShowBootMessage;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v6, v6, Lcom/android/server/policy/PhoneWindowManager;->mFlymeBootLayout:Landroid/view/View;

    invoke-interface {v4, v6, v5}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 7413
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    .end local v4    # "wm":Landroid/view/WindowManager;
    .end local v5    # "wmParams":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager$FlymeInjector$FlymeShowBootMessage;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v6, v6, Lcom/android/server/policy/PhoneWindowManager;->mFlymeBootMsgText:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7379
    return-void

    .line 7380
    :cond_1
    const/4 v3, 0x0

    .local v3, "msgText":Ljava/lang/String;
    goto/16 :goto_0

    .line 7385
    .end local v3    # "msgText":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 7386
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "showFlymeBootMessage"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 7389
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager$FlymeInjector$FlymeShowBootMessage;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v6, v6, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/flyme/internal/R$string;->system_booting:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .local v3, "msgText":Ljava/lang/String;
    goto/16 :goto_1
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 7375
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager$FlymeInjector$FlymeShowBootMessage;->showFlymeBootMessage()V

    .line 7374
    return-void
.end method
