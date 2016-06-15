.class public Landroid/content/ActivityInfoExt;
.super Ljava/lang/Object;
.source "ActivityInfoExt.java"


# static fields
.field public static final MEIZU_SYSTEMUI_OPTION_DARK_STATUS_BAR_ICON:I = 0x1


# instance fields
.field public mAccessPkg:Ljava/lang/String;

.field public mDisplaytitleString:Ljava/lang/CharSequence;

.field public mStartComponentName:Landroid/content/ComponentName;

.field public meizuSystemUIOptions:I

.field public needAccessControl:Z

.field public needGuestControl:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/ActivityInfoExt;->needAccessControl:Z

    .line 28
    iput-boolean v1, p0, Landroid/content/ActivityInfoExt;->needGuestControl:Z

    .line 36
    iput v1, p0, Landroid/content/ActivityInfoExt;->meizuSystemUIOptions:I

    return-void
.end method


# virtual methods
.method public dumpsys(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 47
    iget-boolean v0, p0, Landroid/content/ActivityInfoExt;->needAccessControl:Z

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " needAccessControl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/content/ActivityInfoExt;->needAccessControl:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 50
    :cond_0
    iget-boolean v0, p0, Landroid/content/ActivityInfoExt;->needGuestControl:Z

    if-nez v0, :cond_1

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " needGuestControl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/content/ActivityInfoExt;->needGuestControl:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 53
    :cond_1
    return-void
.end method
