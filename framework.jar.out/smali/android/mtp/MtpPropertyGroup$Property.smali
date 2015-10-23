.class Landroid/mtp/MtpPropertyGroup$Property;
.super Ljava/lang/Object;
.source "MtpPropertyGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/mtp/MtpPropertyGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Property"
.end annotation


# instance fields
.field code:I

.field column:I

.field final synthetic this$0:Landroid/mtp/MtpPropertyGroup;

.field type:I


# direct methods
.method constructor <init>(Landroid/mtp/MtpPropertyGroup;III)V
    .locals 0
    .param p2, "code"    # I
    .param p3, "type"    # I
    .param p4, "column"    # I

    .prologue
    .line 43
    iput-object p1, p0, Landroid/mtp/MtpPropertyGroup$Property;->this$0:Landroid/mtp/MtpPropertyGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p2, p0, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    .line 45
    iput p3, p0, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    .line 46
    iput p4, p0, Landroid/mtp/MtpPropertyGroup$Property;->column:I

    .line 47
    return-void
.end method
