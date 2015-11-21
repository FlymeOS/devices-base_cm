.class Landroid/telephony/PhoneNumberUtils$RewriteRule;
.super Ljava/lang/Object;
.source "PhoneNumberUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/PhoneNumberUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RewriteRule"
.end annotation


# instance fields
.field public countryCodePrefix:I

.field public isoCountryCode:Ljava/lang/String;

.field public replacement:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "countryCodePrefix"    # I
    .param p2, "isoCountryCode"    # Ljava/lang/String;
    .param p3, "replacement"    # Ljava/lang/String;

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iput p1, p0, Landroid/telephony/PhoneNumberUtils$RewriteRule;->countryCodePrefix:I

    .line 181
    iput-object p2, p0, Landroid/telephony/PhoneNumberUtils$RewriteRule;->isoCountryCode:Ljava/lang/String;

    .line 182
    iput-object p3, p0, Landroid/telephony/PhoneNumberUtils$RewriteRule;->replacement:Ljava/lang/String;

    .line 183
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "dialStr"    # Ljava/lang/String;

    .prologue
    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[+]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/PhoneNumberUtils$RewriteRule;->countryCodePrefix:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/PhoneNumberUtils$RewriteRule;->replacement:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
