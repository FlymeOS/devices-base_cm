.class Lcom/android/server/policy/PhoneWindowManager$24;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/PhoneWindowManager;->updateBootProgress(ILandroid/content/pm/ApplicationInfo;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;

.field final synthetic val$currentAppPos:I

.field final synthetic val$optimizedApp:Landroid/content/pm/ApplicationInfo;

.field final synthetic val$stage:I

.field final synthetic val$totalAppCount:I


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;ILandroid/content/pm/ApplicationInfo;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p2, "val$stage"    # I
    .param p3, "val$optimizedApp"    # Landroid/content/pm/ApplicationInfo;
    .param p4, "val$currentAppPos"    # I
    .param p5, "val$totalAppCount"    # I

    .prologue
    .line 7059
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$24;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iput p2, p0, Lcom/android/server/policy/PhoneWindowManager$24;->val$stage:I

    iput-object p3, p0, Lcom/android/server/policy/PhoneWindowManager$24;->val$optimizedApp:Landroid/content/pm/ApplicationInfo;

    iput p4, p0, Lcom/android/server/policy/PhoneWindowManager$24;->val$currentAppPos:I

    iput p5, p0, Lcom/android/server/policy/PhoneWindowManager$24;->val$totalAppCount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 7061
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$24;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Lorg/cyanogenmod/internal/BootDexoptDialog;

    if-nez v0, :cond_0

    .line 7062
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$24;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$24;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lorg/cyanogenmod/internal/BootDexoptDialog;->create(Landroid/content/Context;)Lorg/cyanogenmod/internal/BootDexoptDialog;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Lorg/cyanogenmod/internal/BootDexoptDialog;

    .line 7064
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$24;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Lorg/cyanogenmod/internal/BootDexoptDialog;

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager$24;->val$stage:I

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$24;->val$optimizedApp:Landroid/content/pm/ApplicationInfo;

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager$24;->val$currentAppPos:I

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager$24;->val$totalAppCount:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/cyanogenmod/internal/BootDexoptDialog;->setProgress(ILandroid/content/pm/ApplicationInfo;II)V

    .line 7060
    return-void
.end method
