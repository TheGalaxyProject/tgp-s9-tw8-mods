.class public Lcom/android/server/enterprise/content/SecContentProvider;
.super Landroid/content/ContentProvider;
.source "SecContentProvider.java"


# static fields
.field public static final ACTION_MDM_BROWSERPROVIDER_CHANGED:Ljava/lang/String; = "edm.intent.certificate.action.mdmprovider.changed"

.field private static final ADVANCEDRESTRICTION:I = 0x1

.field private static final API_KEY:Ljava/lang/String; = "API"

.field private static final APPLICATIONPERMISSIONCONTROL:I = 0x17

.field private static final AUDIT:I = 0x2

.field public static final AUTHORITY:Ljava/lang/String; = "com.sec.knox.provider"

.field private static final BLUETOOTH:I = 0x3

.field private static final BLUETOOTHUTILS:I = 0x4

.field private static final BROWSER:I = 0x5

.field private static final CERTIFICATE:I = 0x6

.field private static final CONTAINERAPPLICATION:I = 0x7

.field private static final DATETIME:I = 0x18

.field private static final DEVICESETTIGNS:I = 0x8

.field private static final DEX:I = 0x1d

.field private static final DLP:I = 0x1b

.field private static final DOMAIN_FILTER:I = 0x1c

.field private static final ENTERPRISEKNOXMANAGER:I = 0x9

.field public static final EXTRA_API_CHANGED:Ljava/lang/String; = "edm.intent.certificate.action.mdmprovider.changed.api"

.field private static final FIREWALL:I = 0xa

.field private static final KNOXCONFIGURATIONTYPE:I = 0xb

.field private static final LOCATION:I = 0xc

.field private static final PASSWORD1:I = 0xd

.field private static final PASSWORD2:I = 0xe

.field public static final PROVIDER_ADMINREMOVED:Ljava/lang/String; = "ADMIN_REMOVED"

.field public static final PROVIDER_AUDITLOGPOLICY_AUDITLOGENABLED:Ljava/lang/String; = "AuditLog/isAuditLogEnabled"

.field public static final PROVIDER_AUDITLOGPOLICY_AUTOCOMPLETE:Ljava/lang/String; = "AuditLog/AUTO_COMPLETING_DATA"

.field public static final PROVIDER_AUDITLOGPOLICY_OPENPOPUP:Ljava/lang/String; = "AuditLog/OPEN_POPUP_URL"

.field public static final PROVIDER_AUDITLOGPOLICY_OPENURL:Ljava/lang/String; = "AuditLog/OPEN_URL"

.field public static final PROVIDER_BROWSERPOLICY_AUTOFILL:Ljava/lang/String; = "BrowserPolicy/getAutoFillSetting"

.field public static final PROVIDER_BROWSERPOLICY_COOKIES:Ljava/lang/String; = "BrowserPolicy/getCookiesSetting"

.field public static final PROVIDER_BROWSERPOLICY_HTTPPROXY:Ljava/lang/String; = "BrowserPolicy/getHttpProxy"

.field public static final PROVIDER_BROWSERPOLICY_JAVASCRIPT:Ljava/lang/String; = "BrowserPolicy/getJavaScriptSetting"

.field public static final PROVIDER_BROWSERPOLICY_POPUPS:Ljava/lang/String; = "BrowserPolicy/getPopupsSetting"

.field public static final PROVIDER_CERTIFICATEPOLICY_CERTIFICATE_REMOVED:Ljava/lang/String; = "CertificatePolicy/certificateRemoved"

.field public static final PROVIDER_CERTIFICATEPOLICY_NOTIFY:Ljava/lang/String; = "CertificatePolicy/notifyCertificateFailure"

.field public static final PROVIDER_DOMAINFILTER_ISENABLED:Ljava/lang/String; = "28/getDefaultCaptivePortalUrl"

.field public static final PROVIDER_FIREWALLPOLICY_SAVEURLBLOCKEDREPORT:Ljava/lang/String; = "FirewallPolicy/saveURLBlockedReport"

.field public static final PROVIDER_FIREWALLPOLICY_URLFILTERENABLED:Ljava/lang/String; = "FirewallPolicy/getURLFilterEnabled"

.field public static final PROVIDER_FIREWALLPOLICY_URLFILTERLIST:Ljava/lang/String; = "FirewallPolicy/getURLFilterList"

.field public static final PROVIDER_FIREWALLPOLICY_URLFILTERREPORTENABLED:Ljava/lang/String; = "FirewallPolicy/getURLFilterReportEnabled"

.field public static final PROVIDER_SMARTCARDBROWSERPOLICY_AUTHENTICATION:Ljava/lang/String; = "SmartCardBrowserPolicy/isAuthenticationEnabled"

.field public static final PROVIDER_SMARTCARDBROWSERPOLICY_GETCLIENTCERTIFICATE:Ljava/lang/String; = "SmartCardBrowserPolicy/getClientCertificateAlias"

.field private static final RESTRICTION1:I = 0xf

.field private static final RESTRICTION2:I = 0x10

.field private static final RESTRICTION3:I = 0x11

.field private static final RESTRICTION4:I = 0x12

.field private static final ROAMING:I = 0x13

.field private static final SEAMS:I = 0x1a

.field private static final SECURITY:I = 0x14

.field private static final SMARTCARDBROWSER:I = 0x16

.field private static final SMARTCARDEMAIL:I = 0x15

.field private static final SPDCONTROL:I = 0x19

.field public static final TAG:Ljava/lang/String; = "SecContentProvider"

.field private static final URI_MATCHER:Landroid/content/UriMatcher;


# instance fields
.field private mContext:Landroid/content/Context;

.field mEdmFirewallPolicy:Lcom/android/server/enterprise/firewall/FirewallPolicy;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.sec.knox.provider"

    const-string/jumbo v2, "AdvancedRestrictionPolicy"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.sec.knox.provider"

    const-string/jumbo v2, "AuditLog"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.sec.knox.provider"

    const-string/jumbo v2, "BluetoothPolicy"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.sec.knox.provider"

    const-string/jumbo v2, "BluetoothUtils"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.sec.knox.provider"

    const-string/jumbo v2, "BrowserPolicy"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.sec.knox.provider"

    const-string/jumbo v2, "CertificatePolicy"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.sec.knox.provider"

    const-string/jumbo v2, "ContainerApplicationPolicy"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.sec.knox.provider"

    const-string/jumbo v2, "DeviceSettingsPolicy"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.sec.knox.provider"

    const-string/jumbo v2, "EnterpriseKnoxManagerPolicy"

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.sec.knox.provider"

    const-string/jumbo v2, "FirewallPolicy"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.sec.knox.provider"

    const-string/jumbo v2, "KnoxConfigurationType"

    const/16 v3, 0xb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.sec.knox.provider"

    const-string/jumbo v2, "LocationPolicy"

    const/16 v3, 0xc

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.sec.knox.provider"

    const-string/jumbo v2, "PasswordPolicy1"

    const/16 v3, 0xd

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.sec.knox.provider"

    const-string/jumbo v2, "PasswordPolicy2"

    const/16 v3, 0xe

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.sec.knox.provider"

    const-string/jumbo v2, "RestrictionPolicy1"

    const/16 v3, 0xf

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.sec.knox.provider"

    const-string/jumbo v2, "RestrictionPolicy2"

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.sec.knox.provider"

    const-string/jumbo v2, "RestrictionPolicy3"

    const/16 v3, 0x11

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.sec.knox.provider"

    const-string/jumbo v2, "RestrictionPolicy4"

    const/16 v3, 0x12

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.sec.knox.provider"

    const-string/jumbo v2, "RoamingPolicy"

    const/16 v3, 0x13

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.sec.knox.provider"

    const-string/jumbo v2, "SecurityPolicy"

    const/16 v3, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.sec.knox.provider"

    const-string/jumbo v2, "SmartCardEmailPolicy"

    const/16 v3, 0x15

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.sec.knox.provider"

    const-string/jumbo v2, "SmartCardBrowserPolicy"

    const/16 v3, 0x16

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.sec.knox.provider"

    const-string/jumbo v2, "ApplicationPermissionControlPolicy"

    const/16 v3, 0x17

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.sec.knox.provider"

    const-string/jumbo v2, "DateTimePolicy"

    const/16 v3, 0x18

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.sec.knox.provider"

    const-string/jumbo v2, "SPDControlPolicy"

    const/16 v3, 0x19

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.sec.knox.provider"

    const-string/jumbo v2, "SeamsPolicy"

    const/16 v3, 0x1a

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.sec.knox.provider"

    const-string/jumbo v2, "DlpPolicy"

    const/16 v3, 0x1b

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.sec.knox.provider"

    const-string/jumbo v2, "DomainFilterPolicy"

    const/16 v3, 0x1c

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.sec.knox.provider"

    const-string/jumbo v2, "DexPolicy"

    const/16 v3, 0x1d

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private getCallerName(I)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    const-string/jumbo v2, "package"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageManagerService;

    if-eqz v1, :cond_10

    invoke-virtual {v1, p1}, Lcom/android/server/pm/PackageManagerService;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    :cond_10
    if-nez v0, :cond_15

    const-string/jumbo v0, "fail to get caller name."

    :cond_15
    return-object v0
.end method

.method public static notifyPolicyChangesAllUser(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 13

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    const/4 v3, 0x0

    const/4 v7, 0x0

    :try_start_6
    invoke-static {v7}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getUsers(Z)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_50

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget v8, v1, Landroid/content/pm/UserInfo;->id:I

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v7, p1, v9, v10, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;ZI)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_25} :catch_26
    .catchall {:try_start_6 .. :try_end_25} :catchall_55

    goto :goto_e

    :catch_26
    move-exception v0

    :try_start_27
    const-string/jumbo v7, "SecContentProvider"

    const-string/jumbo v8, "notifyPolicyChangesAllUser() : failed to notify"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_30
    .catchall {:try_start_27 .. :try_end_30} :catchall_55

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_33
    if-nez v3, :cond_4f

    const-string/jumbo v7, "SecContentProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "notifyPolicyChangesAllUser() : notify has failed. uri = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4f
    return-void

    :cond_50
    const/4 v3, 0x1

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_33

    :catchall_55
    move-exception v7

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7
.end method

.method public static notifyPolicyChangesAsUser(Landroid/content/Context;Landroid/net/Uri;I)V
    .registers 10

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    const/4 v1, 0x0

    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v4, p1, v5, v6, p2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;ZI)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_e} :catch_3a
    .catchall {:try_start_5 .. :try_end_e} :catchall_48

    const/4 v1, 0x1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_12
    if-nez v1, :cond_39

    const-string/jumbo v4, "SecContentProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "notifyPolicyChangesAsUser() : notify has failed. userId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", uri = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    return-void

    :catch_3a
    move-exception v0

    :try_start_3b
    const-string/jumbo v4, "SecContentProvider"

    const-string/jumbo v5, "notifyPolicyChangesAsUser() : failed to notify"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_44
    .catchall {:try_start_3b .. :try_end_44} :catchall_48

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_12

    :catchall_48
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public static notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "content://com.sec.knox.provider/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v1, v0, v4, v5, p2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;ZI)V

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5

    const/4 v0, 0x0

    return v0
.end method

.method getArrayLength([Ljava/lang/String;)I
    .registers 6

    if-nez p1, :cond_4

    const/4 v2, 0x0

    return v2

    :cond_4
    const/4 v1, 0x0

    :try_start_5
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8} :catch_a

    move-result v1

    :goto_9
    return v1

    :catch_a
    move-exception v0

    const-string/jumbo v2, "SecContentProvider"

    const-string/jumbo v3, "getArrayLength() return 0 but some exception occurs with invalid request."

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_9
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 20

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    const-string/jumbo v2, "SecContentProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "insert(), uri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "SecContentProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "called from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/server/enterprise/content/SecContentProvider;->getCallerName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    sparse-switch v2, :sswitch_data_1fa

    :cond_51
    :goto_51
    :sswitch_51
    const/4 v2, 0x0

    return-object v2

    :sswitch_53
    const-string/jumbo v2, "browser_policy"

    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/enterprise/browser/BrowserPolicy;

    if-eqz v13, :cond_51

    const-string/jumbo v2, "API"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_51

    const-string/jumbo v2, "saveURLBlockedReport"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v11}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string/jumbo v3, "url"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Lcom/android/server/enterprise/browser/BrowserPolicy;->saveURLBlockedReportEnforcingFirewallPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    goto :goto_51

    :sswitch_84
    const-string/jumbo v2, "certificate_policy"

    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/enterprise/certificate/CertificatePolicy;

    if-eqz v14, :cond_51

    const-string/jumbo v2, "API"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v2, "fail"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    if-eqz v10, :cond_51

    const-string/jumbo v2, "notifyCertificateFailure"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    if-eqz v12, :cond_51

    const-string/jumbo v2, "module"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v14, v2, v3, v4}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->notifyCertificateFailure(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_51

    :sswitch_c0
    const-string/jumbo v2, "auditlog"

    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/auditlog/AuditLogService;

    if-eqz v1, :cond_51

    const-string/jumbo v2, "API"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_13c

    const-string/jumbo v2, "AuditLoggerAsUser"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13c

    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v11}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string/jumbo v3, "severity"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string/jumbo v4, "group"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string/jumbo v5, "outcome"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const-string/jumbo v6, "uid"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string/jumbo v7, "component"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "message"

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "userid"

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_51

    :cond_13c
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v11}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string/jumbo v3, "severity"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string/jumbo v4, "group"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string/jumbo v5, "outcome"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const-string/jumbo v6, "uid"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string/jumbo v7, "component"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "message"

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLogger(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_51

    :sswitch_18c
    const-string/jumbo v2, "password_policy"

    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/enterprise/security/PasswordPolicy;

    if-eqz v15, :cond_51

    const-string/jumbo v2, "API"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_51

    const-string/jumbo v2, "setPwdChangeRequested"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v11}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string/jumbo v3, "flag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v15, v2, v3}, Lcom/android/server/enterprise/security/PasswordPolicy;->setPwdChangeRequested(Lcom/samsung/android/knox/ContextInfo;I)Z

    goto/16 :goto_51

    :sswitch_1c2
    const-string/jumbo v2, "security_policy"

    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/enterprise/security/SecurityPolicy;

    if-eqz v16, :cond_51

    const-string/jumbo v2, "API"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_51

    const-string/jumbo v2, "setDodBannerVisibleStatus"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v11}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string/jumbo v3, "isVisible"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Lcom/android/server/enterprise/security/SecurityPolicy;->setDodBannerVisibleStatus(Lcom/samsung/android/knox/ContextInfo;Z)Z

    goto/16 :goto_51

    :sswitch_data_1fa
    .sparse-switch
        0x2 -> :sswitch_c0
        0x5 -> :sswitch_51
        0x6 -> :sswitch_84
        0xa -> :sswitch_53
        0xe -> :sswitch_18c
        0x14 -> :sswitch_1c2
    .end sparse-switch
.end method

.method public onCreate()Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/enterprise/content/SecContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/content/SecContentProvider;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 84

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    const/16 v66, 0x0

    const/16 v53, 0x0

    const-string/jumbo v4, "SecContentProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v76, "query(), uri = "

    move-object/from16 v0, v76

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v76, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, v76

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v76

    move/from16 v0, v76

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v76, " selection = "

    move-object/from16 v0, v76

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "SecContentProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v76, "called from "

    move-object/from16 v0, v76

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/enterprise/content/SecContentProvider;->getCallerName(I)Ljava/lang/String;

    move-result-object v76

    move-object/from16 v0, v76

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    packed-switch v4, :pswitch_data_314e

    :cond_72
    :goto_72
    :pswitch_72
    const/4 v4, 0x0

    return-object v4

    :pswitch_74
    const-string/jumbo v4, "restriction_policy"

    invoke-static {v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    if-eqz v44, :cond_72

    if-eqz p3, :cond_72

    const-string/jumbo v4, "checkPackageSource"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9a

    if-eqz p4, :cond_98

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_42c

    :cond_98
    const/4 v4, 0x0

    return-object v4

    :cond_9a
    const-string/jumbo v4, "isActivationLockAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b3

    if-eqz p4, :cond_b1

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_458

    :cond_b1
    const/4 v4, 0x0

    return-object v4

    :cond_b3
    const-string/jumbo v4, "isAirplaneModeAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_fa

    const/4 v9, 0x0

    if-eqz p4, :cond_d2

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_d2

    const/4 v4, 0x0

    aget-object v4, p4, v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    :cond_d2
    move-object/from16 v0, v44

    invoke-virtual {v0, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isAirplaneModeAllowed(Z)Z

    move-result v60

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isAirplaneModeAllowed"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_f9
    return-object v53

    :cond_fa
    const-string/jumbo v4, "isAndroidBeamAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_146

    const/4 v9, 0x0

    if-eqz p4, :cond_119

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_119

    const/4 v4, 0x0

    aget-object v4, p4, v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    :cond_119
    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v44

    invoke-virtual {v0, v4, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isAndroidBeamAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v60

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isAndroidBeamAllowed"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_f9

    :cond_146
    const-string/jumbo v4, "isAudioRecordAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_193

    const/4 v9, 0x0

    if-eqz p4, :cond_165

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_165

    const/4 v4, 0x0

    aget-object v4, p4, v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    :cond_165
    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v44

    invoke-virtual {v0, v4, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isAudioRecordAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v60

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isAudioRecordAllowed"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_f9

    :cond_193
    const-string/jumbo v4, "isBackgroundDataEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1cc

    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isBackgroundDataEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v60

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isBackgroundDataEnabled"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_f9

    :cond_1cc
    const-string/jumbo v4, "isBackgroundProcessLimitEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_205

    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isBackgroundProcessLimitAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v60

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isBackgroundProcessLimitEnabled"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_f9

    :cond_205
    const-string/jumbo v4, "isBackupAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21e

    if-eqz p4, :cond_21c

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_48d

    :cond_21c
    const/4 v4, 0x0

    return-object v4

    :cond_21e
    const-string/jumbo v4, "isBluetoothTetheringEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_257

    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isBluetoothTetheringEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v60

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isBluetoothTetheringEnabled"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_f9

    :cond_257
    const-string/jumbo v4, "isCameraEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_270

    if-eqz p4, :cond_26e

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_4c2

    :cond_26e
    const/4 v4, 0x0

    return-object v4

    :cond_270
    const-string/jumbo v4, "isCellularDataAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a9

    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isCellularDataAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v60

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isCellularDataAllowed"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_f9

    :cond_2a9
    const-string/jumbo v4, "isClipboardAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2ef

    if-eqz p4, :cond_2c0

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_4f7

    :cond_2c0
    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v5, 0x0

    move-object/from16 v0, v44

    invoke-virtual {v0, v4, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isClipboardAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v60

    :goto_2cc
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isClipboardAllowed"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_f9

    :cond_2ef
    const-string/jumbo v4, "isClipboardAllowedAsUser"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_309

    if-eqz p4, :cond_307

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_50b

    :cond_307
    const/4 v4, 0x0

    return-object v4

    :cond_309
    const-string/jumbo v4, "isClipboardShareAllowedAsUser"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_322

    if-eqz p4, :cond_320

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_560

    :cond_320
    const/4 v4, 0x0

    return-object v4

    :cond_322
    const-string/jumbo v4, "isClipboardShareAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35b

    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isClipboardShareAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v60

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isClipboardShareAllowed"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_f9

    :cond_35b
    const-string/jumbo v4, "isDeveloperModeAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3a7

    const/4 v9, 0x0

    if-eqz p4, :cond_37a

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_37a

    const/4 v4, 0x0

    aget-object v4, p4, v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    :cond_37a
    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v44

    invoke-virtual {v0, v4, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isDeveloperModeAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v60

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isDeveloperModeAllowed"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v53

    :cond_3a7
    const-string/jumbo v4, "isFactoryResetAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e0

    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isFactoryResetAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v60

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isFactoryResetAllowed"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_f9

    :cond_3e0
    const-string/jumbo v4, "isFastEncryptionAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3fa

    if-eqz p4, :cond_590

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_590

    const/4 v4, 0x0

    return-object v4

    :cond_3fa
    const-string/jumbo v4, "isDataSavingAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5e3

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isDataSavingAllowed()Z

    move-result v60

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isDataSavingAllowed"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_f9

    :cond_42c
    const/4 v4, 0x0

    aget-object v4, p4, v4

    move-object/from16 v0, v44

    invoke-virtual {v0, v6, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->checkPackageSource(ILjava/lang/String;)Z

    move-result v60

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "checkPackageSource"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_f9

    :cond_458
    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    move-object/from16 v0, v44

    invoke-virtual {v0, v4, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isActivationLockAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v60

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isActivationLockAllowed"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_f9

    :cond_48d
    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    move-object/from16 v0, v44

    invoke-virtual {v0, v4, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isBackupAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v60

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isBackupAllowed"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_f9

    :cond_4c2
    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    move-object/from16 v0, v44

    invoke-virtual {v0, v4, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isCameraEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v60

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isCameraEnabled"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_f9

    :cond_4f7
    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    move-object/from16 v0, v44

    invoke-virtual {v0, v4, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isClipboardAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v60

    goto/16 :goto_2cc

    :cond_50b
    const/4 v4, 0x0

    aget-object v4, p4, v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v44

    invoke-virtual {v0, v4, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isClipboardAllowedAsUser(ZI)Z

    move-result v60

    const-string/jumbo v4, "SecContentProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v76, "RESTRICTIONPOLICY_CLIPBOARDALLOWEDASUSER_METHOD return = "

    move-object/from16 v0, v76

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v60

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isClipboardAllowedAsUser"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_f9

    :cond_560
    const/4 v4, 0x0

    aget-object v4, p4, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isClipboardShareAllowedAsUser(I)Z

    move-result v60

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isClipboardShareAllowedAsUser"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_f9

    :cond_590
    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    move-object/from16 v0, v44

    invoke-virtual {v0, v4, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isFastEncryptionAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v60

    const-string/jumbo v4, "SecContentProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v76, "isFastEncryptionAllowed return = "

    move-object/from16 v0, v76

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v60

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isFastEncryptionAllowed"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_f9

    :cond_5e3
    const/4 v4, 0x0

    return-object v4

    :pswitch_5e5
    const-string/jumbo v4, "restriction_policy"

    invoke-static {v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    if-eqz v44, :cond_72

    if-eqz p3, :cond_72

    const-string/jumbo v4, "isFirmwareAutoUpdateAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_60b

    if-eqz p4, :cond_609

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_947

    :cond_609
    const/4 v4, 0x0

    return-object v4

    :cond_60b
    const-string/jumbo v4, "isFirmwareRecoveryAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_624

    if-eqz p4, :cond_622

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_97c

    :cond_622
    const/4 v4, 0x0

    return-object v4

    :cond_624
    const-string/jumbo v4, "isGoogleAccountsAutoSyncAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_65c

    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isGoogleAccountsAutoSyncAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v60

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isGoogleAccountsAutoSyncAllowed"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_65b
    return-object v53

    :cond_65c
    const-string/jumbo v4, "isGoogleCrashReportedAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_694

    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isGoogleCrashReportAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v60

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isGoogleCrashReportedAllowed"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_65b

    :cond_694
    const-string/jumbo v4, "isHeadPhoneEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6ad

    if-eqz p4, :cond_6ab

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_9b1

    :cond_6ab
    const/4 v4, 0x0

    return-object v4

    :cond_6ad
    const-string/jumbo v4, "isHomeKeyEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6fa

    const/4 v9, 0x0

    if-eqz p4, :cond_6cc

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_6cc

    const/4 v4, 0x0

    aget-object v4, p4, v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    :cond_6cc
    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v44

    invoke-virtual {v0, v4, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isHomeKeyEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v60

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isHomeKeyEnabled"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_65b

    :cond_6fa
    const-string/jumbo v4, "isKillingActivitiesOnLeaveAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_760

    if-nez p4, :cond_9e6

    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isKillingActivitiesOnLeaveAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v60

    const-string/jumbo v4, "SecContentProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v76, "isKillingActivitiesOnLeaveAllowed return = "

    move-object/from16 v0, v76

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v60

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v76, " callingUid : "

    move-object/from16 v0, v76

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_73d
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isKillingActivitiesOnLeaveAllowed"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_65b

    :cond_760
    const-string/jumbo v4, "isLockScreenEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_779

    if-eqz p4, :cond_777

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_a2f

    :cond_777
    const/4 v4, 0x0

    return-object v4

    :cond_779
    const-string/jumbo v4, "isLockScreenViewAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_793

    if-eqz p4, :cond_791

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_a64

    :cond_791
    const/4 v4, 0x0

    return-object v4

    :cond_793
    const-string/jumbo v4, "isMicrophoneEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7ad

    if-eqz p4, :cond_7ab

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_adc

    :cond_7ab
    const/4 v4, 0x0

    return-object v4

    :cond_7ad
    const-string/jumbo v4, "isMicrophoneEnabledAsUser"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7c7

    if-eqz p4, :cond_7c5

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_b54

    :cond_7c5
    const/4 v4, 0x0

    return-object v4

    :cond_7c7
    const-string/jumbo v4, "isMockLocationEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_83c

    if-nez p4, :cond_ba9

    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isMockLocationEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v60

    const-string/jumbo v4, "SecContentProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v76, "callingUid = "

    move-object/from16 v0, v76

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7fb
    const-string/jumbo v4, "SecContentProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v76, "isMockLocationEnabled return = "

    move-object/from16 v0, v76

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v60

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isMockLocationEnabled"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_65b

    :cond_83c
    const-string/jumbo v4, "isNewAdminInstallationEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_855

    if-eqz p4, :cond_853

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_be3

    :cond_853
    const/4 v4, 0x0

    return-object v4

    :cond_855
    const-string/jumbo v4, "isNFCEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_887

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNFCEnabled()Z

    move-result v60

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isNFCEnabled"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_65b

    :cond_887
    const-string/jumbo v4, "isNFCEnabledWithMsg"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8cc

    if-eqz p4, :cond_89f

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_c18

    :cond_89f
    const/16 v66, 0x0

    :goto_8a1
    move-object/from16 v0, v44

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNFCEnabledWithMsg(Z)Z

    move-result v60

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isNFCEnabledWithMsg"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_65b

    :cond_8cc
    const-string/jumbo v4, "isNonMarketAppAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_90e

    if-eqz p4, :cond_c21

    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v4, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNonMarketAppAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v60

    :goto_8eb
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isNonMarketAppAllowed"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_65b

    :cond_90e
    const-string/jumbo v4, "isNonTrustedAppInstallBlocked"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c2e

    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNonTrustedAppInstallBlocked(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v60

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isNonTrustedAppInstallBlocked"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_65b

    :cond_947
    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    move-object/from16 v0, v44

    invoke-virtual {v0, v4, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isFirmwareAutoUpdateAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v60

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isFirmwareAutoUpdateAllowed"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_65b

    :cond_97c
    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    move-object/from16 v0, v44

    invoke-virtual {v0, v4, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isFirmwareRecoveryAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v60

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isFirmwareRecoveryAllowed"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_65b

    :cond_9b1
    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    move-object/from16 v0, v44

    invoke-virtual {v0, v4, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isHeadphoneEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v60

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isHeadPhoneEnabled"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_65b

    :cond_9e6
    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v4, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isKillingActivitiesOnLeaveAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v60

    const-string/jumbo v4, "SecContentProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v76, "isKillingActivitiesOnLeaveAllowed return = "

    move-object/from16 v0, v76

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v60

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v76, " userid : "

    move-object/from16 v0, v76

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v76, 0x0

    aget-object v76, p4, v76

    invoke-static/range {v76 .. v76}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v76

    move/from16 v0, v76

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_73d

    :cond_a2f
    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    move-object/from16 v0, v44

    invoke-virtual {v0, v4, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isLockScreenEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v60

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isLockScreenEnabled"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_65b

    :cond_a64
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_ac9

    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v4, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v5, 0x1

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v44

    invoke-virtual {v0, v4, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isLockScreenViewAllowed(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v60

    :goto_a88
    const-string/jumbo v4, "SecContentProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v76, "isLockScreenViewAllowed return = "

    move-object/from16 v0, v76

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v60

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isLockScreenViewAllowed"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_65b

    :cond_ac9
    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v44

    invoke-virtual {v0, v4, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isLockScreenViewAllowed(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v60

    goto :goto_a88

    :cond_adc
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_b41

    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v4, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v5, 0x1

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    move-object/from16 v0, v44

    invoke-virtual {v0, v4, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isMicrophoneEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v60

    :goto_b00
    const-string/jumbo v4, "SecContentProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v76, "isMicrophoneEnabled return = "

    move-object/from16 v0, v76

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v60

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isMicrophoneEnabled"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_65b

    :cond_b41
    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    move-object/from16 v0, v44

    invoke-virtual {v0, v4, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isMicrophoneEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v60

    goto :goto_b00

    :cond_b54
    const/4 v4, 0x0

    aget-object v4, p4, v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v44

    invoke-virtual {v0, v4, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isMicrophoneEnabledAsUser(ZI)Z

    move-result v60

    const-string/jumbo v4, "SecContentProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v76, "isMicrophoneEnabledAsUser return = "

    move-object/from16 v0, v76

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v60

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isMicrophoneEnabledAsUser"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_65b

    :cond_ba9
    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v4, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isMockLocationEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v60

    const-string/jumbo v4, "SecContentProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v76, "callingUid = "

    move-object/from16 v0, v76

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v76, 0x0

    aget-object v76, p4, v76

    invoke-static/range {v76 .. v76}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v76

    move/from16 v0, v76

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7fb

    :cond_be3
    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    move-object/from16 v0, v44

    invoke-virtual {v0, v4, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNewAdminInstallationEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v60

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isNewAdminInstallationEnabled"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_65b

    :cond_c18
    const/4 v4, 0x0

    aget-object v4, p4, v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v66

    goto/16 :goto_8a1

    :cond_c21
    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNonMarketAppAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v60

    goto/16 :goto_8eb

    :cond_c2e
    const-string/jumbo v4, "SecContentProvider"

    const-string/jumbo v5, "return null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    return-object v4

    :pswitch_c39
    const-string/jumbo v4, "restriction_policy"

    invoke-static {v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    if-eqz v44, :cond_72

    if-eqz p3, :cond_72

    const-string/jumbo v4, "isSettingsChangesAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c60

    if-eqz p4, :cond_c5e

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_1052

    :cond_c5e
    const/4 v4, 0x0

    return-object v4

    :cond_c60
    const-string/jumbo v4, "isShareListAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_caa

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_10ac

    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    move-object/from16 v0, v44

    invoke-virtual {v0, v4, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isShareListAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v60

    :goto_c88
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isShareListAllowed"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_ca9
    return-object v53

    :cond_caa
    const-string/jumbo v4, "isOdeTrustedBootVerificationEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ce2

    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isODETrustedBootVerificationEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v60

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isOdeTrustedBootVerificationEnabled"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_ca9

    :cond_ce2
    const-string/jumbo v4, "isOTAUpgradeAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d1a

    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isOTAUpgradeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v60

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isOTAUpgradeAllowed"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v53

    :cond_d1a
    const-string/jumbo v4, "isPowerOffAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d67

    const/4 v9, 0x0

    if-eqz p4, :cond_d39

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_d39

    const/4 v4, 0x0

    aget-object v4, p4, v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    :cond_d39
    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v44

    invoke-virtual {v0, v4, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isPowerOffAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v60

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isPowerOffAllowed"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_ca9

    :cond_d67
    const-string/jumbo v4, "isSafeModeAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_da0

    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSafeModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v60

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isSafeModeAllowed"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_ca9

    :cond_da0
    const-string/jumbo v4, "isSBeamAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ded

    const/4 v9, 0x0

    if-eqz p4, :cond_dbf

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_dbf

    const/4 v4, 0x0

    aget-object v4, p4, v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    :cond_dbf
    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v44

    invoke-virtual {v0, v4, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSBeamAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v60

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isSBeamAllowed"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_ca9

    :cond_ded
    const-string/jumbo v4, "isScreenCaptureEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e06

    if-eqz p4, :cond_e04

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_10ba

    :cond_e04
    const/4 v4, 0x0

    return-object v4

    :cond_e06
    const-string/jumbo v4, "isSdCardEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e3f

    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSdCardEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v60

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isSdCardEnabled"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_ca9

    :cond_e3f
    const-string/jumbo v4, "isSDCardMoveAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e58

    if-eqz p4, :cond_e56

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_10ef

    :cond_e56
    const/4 v4, 0x0

    return-object v4

    :cond_e58
    const-string/jumbo v4, "isScreenPinningAllowedAsUser"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_eb8

    const/4 v9, 0x0

    move/from16 v70, v6

    if-eqz p4, :cond_e79

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_e79

    const/4 v4, 0x0

    aget-object v4, p4, v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    :cond_e79
    if-eqz p4, :cond_e8d

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_e8d

    const/4 v4, 0x1

    aget-object v4, p4, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v70

    :cond_e8d
    move-object/from16 v0, v44

    move/from16 v1, v70

    invoke-virtual {v0, v9, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isScreenPinningAllowedAsUser(ZI)Z

    move-result v60

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isScreenPinningAllowedAsUser"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_ca9

    :cond_eb8
    const-string/jumbo v4, "isIrisCameraEnabledAsUser"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ed1

    if-eqz p4, :cond_ecf

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_1124

    :cond_ecf
    const/4 v4, 0x0

    return-object v4

    :cond_ed1
    const-string/jumbo v4, "isSmartClipModeAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f19

    const/4 v9, 0x0

    if-eqz p4, :cond_ef0

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_ef0

    const/4 v4, 0x0

    aget-object v4, p4, v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    :cond_ef0
    move-object/from16 v0, v44

    invoke-virtual {v0, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSmartClipModeAllowedInternal(Z)Z

    move-result v60

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isSmartClipModeAllowed"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_ca9

    :cond_f19
    const-string/jumbo v4, "isStatusBarExpansionallowedAsUser"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f61

    const/4 v9, 0x0

    if-eqz p4, :cond_f38

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_f38

    const/4 v4, 0x0

    aget-object v4, p4, v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    :cond_f38
    move-object/from16 v0, v44

    invoke-virtual {v0, v9, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isStatusBarExpansionAllowedAsUser(ZI)Z

    move-result v60

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isStatusBarExpansionallowedAsUser"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_ca9

    :cond_f61
    const-string/jumbo v4, "isStopSystemAppAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f9a

    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isStopSystemAppAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v60

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isStopSystemAppAllowed"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_ca9

    :cond_f9a
    const-string/jumbo v4, "isSVoiceAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1019

    const/4 v9, 0x0

    move/from16 v68, v7

    if-eqz p4, :cond_1159

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1159

    const/4 v4, 0x0

    aget-object v4, p4, v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    :cond_fbc
    :goto_fbc
    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v68

    invoke-direct {v4, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v44

    invoke-virtual {v0, v4, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSVoiceAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v60

    const-string/jumbo v4, "SecContentProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v76, "isSVoiceAllowed result = "

    move-object/from16 v0, v76

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v60

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v76, " uid = "

    move-object/from16 v0, v76

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v68

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isSVoiceAllowed"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_ca9

    :cond_1019
    const-string/jumbo v4, "isUsbDebuggingEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1176

    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUsbDebuggingEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v60

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isUsbDebuggingEnabled"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_ca9

    :cond_1052
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1099

    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    const/4 v5, 0x1

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v4, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    move-object/from16 v0, v44

    invoke-virtual {v0, v4, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSettingsChangesAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v60

    :goto_1076
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isSettingsChangesAllowed"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_ca9

    :cond_1099
    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    move-object/from16 v0, v44

    invoke-virtual {v0, v4, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSettingsChangesAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v60

    goto :goto_1076

    :cond_10ac
    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v5, 0x0

    move-object/from16 v0, v44

    invoke-virtual {v0, v4, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isShareListAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v60

    goto/16 :goto_c88

    :cond_10ba
    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    move-object/from16 v0, v44

    invoke-virtual {v0, v4, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isScreenCaptureEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v60

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isScreenCaptureEnabled"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_ca9

    :cond_10ef
    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    move-object/from16 v0, v44

    invoke-virtual {v0, v4, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSDCardMoveAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v60

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isSDCardMoveAllowed"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_ca9

    :cond_1124
    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    move-object/from16 v0, v44

    invoke-virtual {v0, v4, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isIrisCameraEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v60

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isIrisCameraEnabledAsUser"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_ca9

    :cond_1159
    if-eqz p4, :cond_fbc

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_fbc

    const/4 v4, 0x0

    aget-object v4, p4, v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    const/4 v4, 0x1

    aget-object v4, p4, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v68

    goto/16 :goto_fbc

    :cond_1176
    const/4 v4, 0x0

    return-object v4

    :pswitch_1178
    const-string/jumbo v4, "restriction_policy"

    invoke-static {v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    if-eqz v44, :cond_72

    if-eqz p3, :cond_72

    const-string/jumbo v4, "isUsbHostStorageAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11d1

    const/4 v9, 0x0

    if-eqz p4, :cond_11a4

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_11a4

    const/4 v4, 0x0

    aget-object v4, p4, v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    :cond_11a4
    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v44

    invoke-virtual {v0, v4, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUsbHostStorageAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v60

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isUsbHostStorageAllowed"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_11d0
    :goto_11d0
    return-object v53

    :cond_11d1
    const-string/jumbo v4, "isUsbMassStorageEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11ea

    if-eqz p4, :cond_11e8

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_15ed

    :cond_11e8
    const/4 v4, 0x0

    return-object v4

    :cond_11ea
    const-string/jumbo v4, "isUsbMediaPlayerAvailable"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1203

    if-eqz p4, :cond_1201

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_1622

    :cond_1201
    const/4 v4, 0x0

    return-object v4

    :cond_1203
    const-string/jumbo v4, "isUsbTetheringEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_123b

    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUsbTetheringEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v60

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isUsbTetheringEnabled"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_11d0

    :cond_123b
    const-string/jumbo v4, "isUserMobileDataLimitAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1274

    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUserMobileDataLimitAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v60

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isUserMobileDataLimitAllowed"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_11d0

    :cond_1274
    const-string/jumbo v4, "isUseSecureKeypadEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12ad

    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUseSecureKeypadEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v60

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isUseSecureKeypadEnabled"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_11d0

    :cond_12ad
    const-string/jumbo v4, "isVideoRecordAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12fa

    const/4 v9, 0x0

    if-eqz p4, :cond_12cc

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_12cc

    const/4 v4, 0x0

    aget-object v4, p4, v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    :cond_12cc
    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v44

    invoke-virtual {v0, v4, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isVideoRecordAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v60

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isVideoRecordAllowed"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_11d0

    :cond_12fa
    const-string/jumbo v4, "isVpnAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1333

    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isVpnAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v60

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isVpnAllowed"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_11d0

    :cond_1333
    const-string/jumbo v4, "isWallpaperChangeAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1380

    const/4 v9, 0x0

    if-eqz p4, :cond_1352

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_1352

    const/4 v4, 0x0

    aget-object v4, p4, v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    :cond_1352
    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v44

    invoke-virtual {v0, v4, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isWallpaperChangeAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v60

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isWallpaperChangeAllowed"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_11d0

    :cond_1380
    const-string/jumbo v4, "isWifiDirectAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13cd

    const/4 v9, 0x0

    if-eqz p4, :cond_139f

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_139f

    const/4 v4, 0x0

    aget-object v4, p4, v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    :cond_139f
    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v44

    invoke-virtual {v0, v4, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isWifiDirectAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v60

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isWifiDirectAllowed"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_11d0

    :cond_13cd
    const-string/jumbo v4, "isWifiTetheringEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1406

    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isWifiTetheringEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v60

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isWifiTetheringEnabled"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_11d0

    :cond_1406
    const-string/jumbo v4, "isSDCardWriteAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_143f

    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSDCardWriteAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v60

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isSDCardWriteAllowed"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_11d0

    :cond_143f
    const-string/jumbo v4, "isWifiEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_149a

    const-string/jumbo v4, "wifi_policy"

    invoke-static {v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Lcom/android/server/enterprise/wifi/WifiPolicy;

    const/16 v66, 0x0

    if-nez p4, :cond_1461

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_1468

    :cond_1461
    const/4 v4, 0x0

    aget-object v4, p4, v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v66

    :cond_1468
    if-eqz v50, :cond_1657

    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v50

    move/from16 v1, v66

    invoke-virtual {v0, v4, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v60

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isWifiEnabled"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_11d0

    :cond_149a
    const-string/jumbo v4, "isScreenCaptureEnabledInternal"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14e1

    const/16 v66, 0x0

    if-nez p4, :cond_14b3

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_14ba

    :cond_14b3
    const/4 v4, 0x0

    aget-object v4, p4, v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v66

    :cond_14ba
    move-object/from16 v0, v44

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isScreenCaptureEnabledInternal(Z)Z

    move-result v60

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p3, v4, v5

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_11d0

    :cond_14e1
    const-string/jumbo v4, "isFotaVersionAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1511

    const/16 v60, 0x1

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isFotaVersionAllowed"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_11d0

    :cond_1511
    const-string/jumbo v4, "isGearPolicyEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1547

    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v5, 0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v4, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isWearablePolicyEnabled(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v60

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p3, v4, v5

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_11d0

    :cond_1547
    const-string/jumbo v4, "getAllowedFOTAInfo"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1594

    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getAllowedFOTAInfo(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v62

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "getAllowedFOTAInfo"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v62, :cond_11d0

    invoke-interface/range {v62 .. v62}, Ljava/util/List;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_11d0

    invoke-interface/range {v62 .. v62}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v29

    :goto_157c
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11d0

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v28, v4, v5

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_157c

    :cond_1594
    const-string/jumbo v4, "isPowerSavingModeAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1659

    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isPowerSavingModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v60

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isPowerSavingModeAllowed"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    if-nez v60, :cond_11d0

    const-string/jumbo v4, "SecContentProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v76, "RESTRICTIONPOLICY_POWERSAVINGMODE_ALLOWED_METHOD cursor return "

    move-object/from16 v0, v76

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v60

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11d0

    :cond_15ed
    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    move-object/from16 v0, v44

    invoke-virtual {v0, v4, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUsbMassStorageEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v60

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isUsbMassStorageEnabled"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_11d0

    :cond_1622
    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    move-object/from16 v0, v44

    invoke-virtual {v0, v4, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUsbMediaPlayerAvailable(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v60

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isUsbMediaPlayerAvailable"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_11d0

    :cond_1657
    const/4 v4, 0x0

    return-object v4

    :cond_1659
    const/4 v4, 0x0

    return-object v4

    :pswitch_165b
    const-string/jumbo v4, "certificate_policy"

    invoke-static {v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/android/server/enterprise/certificate/CertificatePolicy;

    if-eqz v37, :cond_72

    if-eqz p3, :cond_72

    const-string/jumbo v4, "isCaCertificateTrustedAsUser"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1682

    if-eqz p4, :cond_1680

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    if-gt v4, v5, :cond_180c

    :cond_1680
    const/4 v4, 0x0

    return-object v4

    :cond_1682
    const-string/jumbo v4, "isCaCertificateDisabledAsUser"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_169b

    if-eqz p4, :cond_1699

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_185b

    :cond_1699
    const/4 v4, 0x0

    return-object v4

    :cond_169b
    const-string/jumbo v4, "isUserRemoveCertificatesAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16e3

    if-eqz p4, :cond_18a1

    move-object/from16 v0, p4

    array-length v4, v0

    const/4 v5, 0x1

    if-ne v4, v5, :cond_189d

    const/16 v27, 0x1

    :goto_16b0
    if-eqz v27, :cond_18a5

    const/4 v4, 0x0

    aget-object v4, p4, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v71

    move-object/from16 v0, v37

    move/from16 v1, v71

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isUserRemoveCertificatesAllowedAsUser(I)Z

    move-result v60

    :goto_16c1
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isUserRemoveCertificatesAllowed"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_16e2
    :goto_16e2
    return-object v53

    :cond_16e3
    const-string/jumbo v4, "isSignatureIdentityInformationEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16fc

    if-eqz p4, :cond_16fa

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_18b2

    :cond_16fa
    const/4 v4, 0x0

    return-object v4

    :cond_16fc
    const-string/jumbo v4, "getIdentitiesFromSignatures"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1715

    if-eqz p4, :cond_1713

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_18e7

    :cond_1713
    const/4 v4, 0x0

    return-object v4

    :cond_1715
    const-string/jumbo v4, "notifyCertificateFailure"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_172f

    if-eqz p4, :cond_172d

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x2

    if-gt v4, v5, :cond_1944

    :cond_172d
    const/4 v4, 0x0

    return-object v4

    :cond_172f
    const-string/jumbo v4, "isRevocationCheckEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1768

    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isRevocationCheckEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v60

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isRevocationCheckEnabled"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_16e2

    :cond_1768
    const-string/jumbo v4, "isOcspCheckEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17a1

    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isOcspCheckEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v60

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isOcspCheckEnabled"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_16e2

    :cond_17a1
    const-string/jumbo v4, "isCertificateValidationAtInstallEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17da

    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isCertificateValidationAtInstallEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v60

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isCertificateValidationAtInstallEnabled"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_16e2

    :cond_17da
    const-string/jumbo v4, "validateCertificateAtInstall"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17f3

    if-eqz p4, :cond_17f1

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_195d

    :cond_17f1
    const/4 v4, 0x0

    return-object v4

    :cond_17f3
    const-string/jumbo v4, "validateChainAtInstall"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16e2

    if-eqz p4, :cond_180a

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_198f

    :cond_180a
    const/4 v4, 0x0

    return-object v4

    :cond_180c
    move/from16 v70, v6

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x2

    if-le v4, v5, :cond_1820

    const/4 v4, 0x2

    aget-object v4, p4, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v70

    :cond_1820
    const/4 v4, 0x0

    aget-object v4, p4, v4

    invoke-static {v4}, Lcom/android/server/enterprise/utils/Utils;->deserializeObjectFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/knox/keystore/CertificateInfo;

    const/4 v5, 0x1

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    move-object/from16 v0, v37

    move/from16 v1, v70

    invoke-virtual {v0, v4, v5, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isCaCertificateTrustedAsUser(Lcom/samsung/android/knox/keystore/CertificateInfo;ZI)Z

    move-result v60

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isCaCertificateTrustedAsUser"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_16e2

    :cond_185b
    move/from16 v22, v6

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_186f

    const/4 v4, 0x1

    aget-object v4, p4, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    :cond_186f
    const/4 v4, 0x0

    aget-object v4, p4, v4

    move-object/from16 v0, v37

    move/from16 v1, v22

    invoke-virtual {v0, v4, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isCaCertificateDisabledAsUser(Ljava/lang/String;I)Z

    move-result v60

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isCaCertificateDisabledAsUser"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_16e2

    :cond_189d
    const/16 v27, 0x0

    goto/16 :goto_16b0

    :cond_18a1
    const/16 v27, 0x0

    goto/16 :goto_16b0

    :cond_18a5
    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isUserRemoveCertificatesAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v60

    goto/16 :goto_16c1

    :cond_18b2
    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    move-object/from16 v0, v37

    invoke-virtual {v0, v4, v5}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isSignatureIdentityInformationEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v60

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isSignatureIdentityInformationEnabled"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_16e2

    :cond_18e7
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v5, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v4, 0x0

    aget-object v4, p4, v4

    invoke-static {v4}, Lcom/android/server/enterprise/utils/Utils;->deserializeObjectFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/content/pm/Signature;

    move-object/from16 v0, v37

    invoke-virtual {v0, v5, v4}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getIdentitiesFromSignatures(Lcom/samsung/android/knox/ContextInfo;[Landroid/content/pm/Signature;)Ljava/util/List;

    move-result-object v52

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "getIdentitiesFromSignatures"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v52, :cond_16e2

    invoke-interface/range {v52 .. v52}, Ljava/util/List;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_16e2

    invoke-interface/range {v52 .. v52}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v75

    :cond_191a
    invoke-interface/range {v75 .. v75}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_16e2

    invoke-interface/range {v75 .. v75}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v74

    check-cast v74, [Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, v74

    array-length v5, v0

    :goto_192a
    if-ge v4, v5, :cond_191a

    aget-object v30, v74, v4

    const/16 v76, 0x1

    move/from16 v0, v76

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v76, v0

    const/16 v77, 0x0

    aput-object v30, v76, v77

    move-object/from16 v0, v53

    move-object/from16 v1, v76

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_192a

    :cond_1944
    const/4 v4, 0x0

    aget-object v4, p4, v4

    const/4 v5, 0x1

    aget-object v5, p4, v5

    const/16 v76, 0x2

    aget-object v76, p4, v76

    invoke-static/range {v76 .. v76}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v76

    move-object/from16 v0, v37

    move/from16 v1, v76

    invoke-virtual {v0, v4, v5, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->notifyCertificateFailure(Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v53, 0x0

    goto/16 :goto_16e2

    :cond_195d
    const/4 v4, 0x0

    aget-object v4, p4, v4

    invoke-static {v4}, Lcom/android/server/enterprise/utils/Utils;->deserializeObjectFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/knox/keystore/CertificateInfo;

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->validateCertificateAtInstall(Lcom/samsung/android/knox/keystore/CertificateInfo;)I

    move-result v59

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "validateCertificateAtInstall"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Integer;

    invoke-static/range {v59 .. v59}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_16e2

    :cond_198f
    const/4 v4, 0x0

    aget-object v4, p4, v4

    invoke-static {v4}, Lcom/android/server/enterprise/utils/Utils;->deserializeObjectFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->validateChainAtInstall(Ljava/util/List;)I

    move-result v59

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "validateChainAtInstall"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Integer;

    invoke-static/range {v59 .. v59}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_16e2

    :pswitch_19c1
    const-string/jumbo v4, "password_policy"

    invoke-static {v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/android/server/enterprise/security/PasswordPolicy;

    if-eqz v43, :cond_72

    if-eqz p3, :cond_72

    const-string/jumbo v4, "getForbiddenStrings"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19e7

    if-eqz p4, :cond_19e5

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_1b98

    :cond_19e5
    const/4 v4, 0x0

    return-object v4

    :cond_19e7
    const-string/jumbo v4, "getMaximumCharacterOccurences"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a1f

    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v43

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumCharacterOccurences(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v59

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "getMaximumCharacterOccurences"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Integer;

    invoke-static/range {v59 .. v59}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_1a1e
    :goto_1a1e
    return-object v53

    :cond_1a1f
    const-string/jumbo v4, "getMaximumCharacterSequenceLength"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a57

    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v43

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumCharacterSequenceLength(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v59

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "getMaximumCharacterSequenceLength"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Integer;

    invoke-static/range {v59 .. v59}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1a1e

    :cond_1a57
    const-string/jumbo v4, "getMaximumNumericSequenceLength"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a8f

    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v43

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumNumericSequenceLength(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v59

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "getMaximumNumericSequenceLength"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Integer;

    invoke-static/range {v59 .. v59}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1a1e

    :cond_1a8f
    const-string/jumbo v4, "getMinimumCharacterChangeLength"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1ac8

    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v43

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMinimumCharacterChangeLength(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v59

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "getMinimumCharacterChangeLength"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Integer;

    invoke-static/range {v59 .. v59}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1a1e

    :cond_1ac8
    const-string/jumbo v4, "getPasswordChangeTimeout"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b01

    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v43

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/security/PasswordPolicy;->getPasswordChangeTimeout(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v59

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "getPasswordChangeTimeout"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Integer;

    invoke-static/range {v59 .. v59}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1a1e

    :cond_1b01
    const-string/jumbo v4, "getRequiredPwdPatternRestrictions"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b1a

    if-eqz p4, :cond_1b18

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_1be1

    :cond_1b18
    const/4 v4, 0x0

    return-object v4

    :cond_1b1a
    const-string/jumbo v4, "hasForbiddenCharacterSequence"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b33

    if-eqz p4, :cond_1b31

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_1c11

    :cond_1b31
    const/4 v4, 0x0

    return-object v4

    :cond_1b33
    const-string/jumbo v4, "hasForbiddenData"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b4c

    if-eqz p4, :cond_1b4a

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_1c42

    :cond_1b4a
    const/4 v4, 0x0

    return-object v4

    :cond_1b4c
    const-string/jumbo v4, "hasForbiddenNumericSequence"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b65

    if-eqz p4, :cond_1b63

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_1c73

    :cond_1b63
    const/4 v4, 0x0

    return-object v4

    :cond_1b65
    const-string/jumbo v4, "hasForbiddenStringDistance"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b7f

    if-eqz p4, :cond_1b7d

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    if-gt v4, v5, :cond_1ca4

    :cond_1b7d
    const/4 v4, 0x0

    return-object v4

    :cond_1b7f
    const-string/jumbo v4, "hasMaxRepeatedCharacters"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d0c

    if-eqz p4, :cond_1b96

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_1cdb

    :cond_1b96
    const/4 v4, 0x0

    return-object v4

    :cond_1b98
    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    move-object/from16 v0, v43

    invoke-virtual {v0, v4, v5}, Lcom/android/server/enterprise/security/PasswordPolicy;->getForbiddenStrings(Lcom/samsung/android/knox/ContextInfo;Z)Ljava/util/List;

    move-result-object v51

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "getForbiddenStrings"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v51, :cond_1a1e

    invoke-interface/range {v51 .. v51}, Ljava/util/List;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1a1e

    invoke-interface/range {v51 .. v51}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v75

    :goto_1bc9
    invoke-interface/range {v75 .. v75}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a1e

    invoke-interface/range {v75 .. v75}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v73

    check-cast v73, Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v73, v4, v5

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1bc9

    :cond_1be1
    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    move-object/from16 v0, v43

    invoke-virtual {v0, v4, v5}, Lcom/android/server/enterprise/security/PasswordPolicy;->getRequiredPwdPatternRestrictions(Lcom/samsung/android/knox/ContextInfo;Z)Ljava/lang/String;

    move-result-object v67

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "getRequiredPwdPatternRestrictions"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v67, v4, v5

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1a1e

    :cond_1c11
    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v5, 0x0

    aget-object v5, p4, v5

    move-object/from16 v0, v43

    invoke-virtual {v0, v4, v5}, Lcom/android/server/enterprise/security/PasswordPolicy;->hasForbiddenCharacterSequence(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v60

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "hasForbiddenCharacterSequence"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1a1e

    :cond_1c42
    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v5, 0x0

    aget-object v5, p4, v5

    move-object/from16 v0, v43

    invoke-virtual {v0, v4, v5}, Lcom/android/server/enterprise/security/PasswordPolicy;->hasForbiddenData(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v60

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "hasForbiddenData"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1a1e

    :cond_1c73
    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v5, 0x0

    aget-object v5, p4, v5

    move-object/from16 v0, v43

    invoke-virtual {v0, v4, v5}, Lcom/android/server/enterprise/security/PasswordPolicy;->hasForbiddenNumericSequence(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v60

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "hasForbiddenNumericSequence"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1a1e

    :cond_1ca4
    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v5, 0x0

    aget-object v5, p4, v5

    const/16 v76, 0x1

    aget-object v76, p4, v76

    move-object/from16 v0, v43

    move-object/from16 v1, v76

    invoke-virtual {v0, v4, v5, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->hasForbiddenStringDistance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v60

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "hasForbiddenStringDistance"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1a1e

    :cond_1cdb
    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v5, 0x0

    aget-object v5, p4, v5

    move-object/from16 v0, v43

    invoke-virtual {v0, v4, v5}, Lcom/android/server/enterprise/security/PasswordPolicy;->hasMaxRepeatedCharacters(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v60

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "hasMaxRepeatedCharacters"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1a1e

    :cond_1d0c
    const/4 v4, 0x0

    return-object v4

    :pswitch_1d0e
    const-string/jumbo v4, "password_policy"

    invoke-static {v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/android/server/enterprise/security/PasswordPolicy;

    if-eqz v43, :cond_72

    if-eqz p3, :cond_72

    const-string/jumbo v4, "isBiometricAuthenticationEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d34

    if-eqz p4, :cond_1d32

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_1fba

    :cond_1d32
    const/4 v4, 0x0

    return-object v4

    :cond_1d34
    const-string/jumbo v4, "isBiometricAuthenticationEnabledAsUser"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d4e

    if-eqz p4, :cond_1d4c

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    if-gt v4, v5, :cond_1fef

    :cond_1d4c
    const/4 v4, 0x0

    return-object v4

    :cond_1d4e
    const-string/jumbo v4, "isChangeRequested"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d86

    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v43

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/security/PasswordPolicy;->isChangeRequested(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v59

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isChangeRequested"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Integer;

    invoke-static/range {v59 .. v59}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_1d85
    return-object v53

    :cond_1d86
    const-string/jumbo v4, "isExternalStorageForFailedPasswordsWipeExcluded"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e08

    if-eqz p4, :cond_2026

    const-string/jumbo v4, "SecContentProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v76, "PASSWORDPOLICY_EXTERNALSTORAGEFORFAILEDPASSWORDSWIPE_METHOD user id = "

    move-object/from16 v0, v76

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v76, 0x0

    aget-object v76, p4, v76

    move-object/from16 v0, v76

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v4, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v43

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/security/PasswordPolicy;->isExternalStorageForFailedPasswordsWipeExcluded(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v60

    :goto_1dc7
    const-string/jumbo v4, "SecContentProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v76, "PASSWORDPOLICY_EXTERNALSTORAGEFORFAILEDPASSWORDSWIPE_METHOD return = "

    move-object/from16 v0, v76

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v60

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isExternalStorageForFailedPasswordsWipeExcluded"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1d85

    :cond_1e08
    const-string/jumbo v4, "isPasswordPatternMatched"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e21

    if-eqz p4, :cond_1e1f

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_2033

    :cond_1e1f
    const/4 v4, 0x0

    return-object v4

    :cond_1e21
    const-string/jumbo v4, "isPasswordVisibilityEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e96

    if-nez p4, :cond_2064

    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v43

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/security/PasswordPolicy;->isPasswordVisibilityEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v60

    const-string/jumbo v4, "SecContentProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v76, "isPasswordVisibilityEnabled callingUid = "

    move-object/from16 v0, v76

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1e55
    const-string/jumbo v4, "SecContentProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v76, "isPasswordVisibilityEnabled return = "

    move-object/from16 v0, v76

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v60

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isPasswordVisibilityEnabled"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1d85

    :cond_1e96
    const-string/jumbo v4, "isPasswordVisibilityEnabledAsUser"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1eb0

    if-eqz p4, :cond_1eae

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_209e

    :cond_1eae
    const/4 v4, 0x0

    return-object v4

    :cond_1eb0
    const-string/jumbo v4, "getPasswordLockDelay"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1ee9

    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v43

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/security/PasswordPolicy;->getPasswordLockDelay(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v59

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "getPasswordLockDelay"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Integer;

    invoke-static/range {v59 .. v59}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1d85

    :cond_1ee9
    const-string/jumbo v4, "getMaximumFailedPasswordsForDisable"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f6b

    if-eqz p4, :cond_20ec

    const-string/jumbo v4, "SecContentProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v76, "PASSWORDPOLICY_MAXIMUMFAILEDPASSWORDSFORDISABLE_METHOD user id = "

    move-object/from16 v0, v76

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v76, 0x0

    aget-object v76, p4, v76

    move-object/from16 v0, v76

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v4, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v43

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumFailedPasswordsForDisable(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v59

    :goto_1f2a
    const-string/jumbo v4, "SecContentProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v76, "PASSWORDPOLICY_MAXIMUMFAILEDPASSWORDSFORDISABLE_METHOD return = "

    move-object/from16 v0, v76

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v59

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "getMaximumFailedPasswordsForDisable"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Integer;

    invoke-static/range {v59 .. v59}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1d85

    :cond_1f6b
    const-string/jumbo v4, "getMaximumFailedPasswordsForWipe"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f85

    if-eqz p4, :cond_1f83

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_20f9

    :cond_1f83
    const/4 v4, 0x0

    return-object v4

    :cond_1f85
    const-string/jumbo v4, "getCurrentFailedPasswordAttempts"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2199

    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v43

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/security/PasswordPolicy;->getCurrentFailedPasswordAttemptsInternal(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v59

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p3, v4, v5

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Integer;

    invoke-static/range {v59 .. v59}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1d85

    :cond_1fba
    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v43

    invoke-virtual {v0, v4, v5}, Lcom/android/server/enterprise/security/PasswordPolicy;->isBiometricAuthenticationEnabled(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v60

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isBiometricAuthenticationEnabled"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1d85

    :cond_1fef
    const/4 v4, 0x0

    aget-object v4, p4, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v43

    invoke-virtual {v0, v4, v5}, Lcom/android/server/enterprise/security/PasswordPolicy;->isBiometricAuthenticationEnabledAsUser(II)Z

    move-result v60

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isBiometricAuthenticationEnabledAsUser"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1d85

    :cond_2026
    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v43

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/security/PasswordPolicy;->isExternalStorageForFailedPasswordsWipeExcluded(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v60

    goto/16 :goto_1dc7

    :cond_2033
    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v5, 0x0

    aget-object v5, p4, v5

    move-object/from16 v0, v43

    invoke-virtual {v0, v4, v5}, Lcom/android/server/enterprise/security/PasswordPolicy;->isPasswordPatternMatched(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v60

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isPasswordPatternMatched"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1d85

    :cond_2064
    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v4, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v43

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/security/PasswordPolicy;->isPasswordVisibilityEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v60

    const-string/jumbo v4, "SecContentProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v76, "isPasswordVisibilityEnabled callingUid = "

    move-object/from16 v0, v76

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v76, 0x0

    aget-object v76, p4, v76

    invoke-static/range {v76 .. v76}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v76

    move/from16 v0, v76

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1e55

    :cond_209e
    const/4 v4, 0x0

    aget-object v4, p4, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v43

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/security/PasswordPolicy;->isPasswordVisibilityEnabledAsUser(I)Z

    move-result v60

    const-string/jumbo v4, "SecContentProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v76, "isPasswordVisibilityEnabledAsUser return = "

    move-object/from16 v0, v76

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v60

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isPasswordVisibilityEnabledAsUser"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1d85

    :cond_20ec
    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v43

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumFailedPasswordsForDisable(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v59

    goto/16 :goto_1f2a

    :cond_20f9
    const/4 v4, 0x0

    aget-object v4, p4, v4

    if-nez v4, :cond_2182

    const/16 v21, 0x0

    :goto_2100
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_218b

    const-string/jumbo v4, "SecContentProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v76, "PASSWORDPOLICY_MAXIMUMFAILEDPASSWORDSFORWIPE_METHOD user id = "

    move-object/from16 v0, v76

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v76, 0x0

    aget-object v76, p4, v76

    move-object/from16 v0, v76

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    const/4 v5, 0x1

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v4, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v43

    move-object/from16 v1, v21

    invoke-virtual {v0, v4, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumFailedPasswordsForWipe(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)I

    move-result v59

    :goto_2141
    const-string/jumbo v4, "SecContentProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v76, "PASSWORDPOLICY_MAXIMUMFAILEDPASSWORDSFORWIPE_METHOD return = "

    move-object/from16 v0, v76

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v59

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "getMaximumFailedPasswordsForWipe"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Integer;

    invoke-static/range {v59 .. v59}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1d85

    :cond_2182
    const/4 v4, 0x0

    aget-object v4, p4, v4

    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v21

    goto/16 :goto_2100

    :cond_218b
    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v43

    move-object/from16 v1, v21

    invoke-virtual {v0, v4, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumFailedPasswordsForWipe(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)I

    move-result v59

    goto :goto_2141

    :cond_2199
    const/4 v4, 0x0

    return-object v4

    :pswitch_219b
    const-string/jumbo v4, "browser_policy"

    invoke-static {v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/android/server/enterprise/browser/BrowserPolicy;

    if-eqz v36, :cond_72

    if-eqz p3, :cond_72

    const-string/jumbo v4, "getHttpProxy"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21db

    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getHttpProxy(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v58

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "getHttpProxy"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v58, v4, v5

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_21da
    return-object v53

    :cond_21db
    const-string/jumbo v4, "getAutoFillSetting"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2214

    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v5, 0x4

    move-object/from16 v0, v36

    invoke-virtual {v0, v4, v5}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getBrowserSettingStatus(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v10

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "getAutoFillSetting"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_21da

    :cond_2214
    const-string/jumbo v4, "getCookiesSetting"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_224d

    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v5, 0x2

    move-object/from16 v0, v36

    invoke-virtual {v0, v4, v5}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getBrowserSettingStatus(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v11

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "getCookiesSetting"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_21da

    :cond_224d
    const-string/jumbo v4, "getJavaScriptSetting"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2288

    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/16 v5, 0x10

    move-object/from16 v0, v36

    invoke-virtual {v0, v4, v5}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getBrowserSettingStatus(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v17

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "getJavaScriptSetting"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_21da

    :cond_2288
    const-string/jumbo v4, "getPopupsSetting"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22c2

    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v5, 0x1

    move-object/from16 v0, v36

    invoke-virtual {v0, v4, v5}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getBrowserSettingStatus(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v18

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "getPopupsSetting"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_21da

    :cond_22c2
    const-string/jumbo v4, "getForceFraudWarningSetting"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22fd

    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/16 v5, 0x8

    move-object/from16 v0, v36

    invoke-virtual {v0, v4, v5}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getBrowserSettingStatus(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v12

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "getForceFraudWarningSetting"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_21da

    :cond_22fd
    const/4 v4, 0x0

    return-object v4

    :pswitch_22ff
    const-string/jumbo v4, "bluetooth_policy"

    invoke-static {v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    if-eqz v35, :cond_72

    if-eqz p3, :cond_72

    const-string/jumbo v4, "isBluetoothEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2362

    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBluetoothEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v60

    const-string/jumbo v4, "SecContentProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v76, "isBluetoothEnabled = "

    move-object/from16 v0, v76

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v60

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isBluetoothEnabled"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_2361
    return-object v53

    :cond_2362
    const-string/jumbo v4, "isBluetoothEnabledWithMsg"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_237b

    if-eqz p4, :cond_2379

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_2471

    :cond_2379
    const/4 v4, 0x0

    return-object v4

    :cond_237b
    const-string/jumbo v4, "isOutgoingCallsAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2394

    if-eqz p4, :cond_2392

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_24bf

    :cond_2392
    const/4 v4, 0x0

    return-object v4

    :cond_2394
    const-string/jumbo v4, "isLimitedDiscoverableEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23cc

    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isLimitedDiscoverableEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v60

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isLimitedDiscoverableEnabled"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_2361

    :cond_23cc
    const-string/jumbo v4, "isDiscoverableEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2405

    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isDiscoverableEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v60

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isDiscoverableEnabled"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2361

    :cond_2405
    const-string/jumbo v4, "isDesktopConnectivityEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_241e

    if-eqz p4, :cond_241c

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_250d

    :cond_241c
    const/4 v4, 0x0

    return-object v4

    :cond_241e
    const-string/jumbo v4, "bluetoothLog"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2438

    if-eqz p4, :cond_2436

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_253d

    :cond_2436
    const/4 v4, 0x0

    return-object v4

    :cond_2438
    const-string/jumbo v4, "isBluetoothLogEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2574

    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBluetoothLogEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v60

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isBluetoothLogEnabled"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2361

    :cond_2471
    const/4 v4, 0x0

    aget-object v4, p4, v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBluetoothEnabledWithMsg(Z)Z

    move-result v60

    const-string/jumbo v4, "SecContentProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v76, "isBluetoothEnabled = "

    move-object/from16 v0, v76

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v60

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isBluetoothEnabledWithMsg"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2361

    :cond_24bf
    const/4 v4, 0x0

    aget-object v4, p4, v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isOutgoingCallsAllowed(Z)Z

    move-result v60

    const-string/jumbo v4, "SecContentProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v76, "isOutgoingCallsAllowed = "

    move-object/from16 v0, v76

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v60

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isOutgoingCallsAllowed"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2361

    :cond_250d
    const/4 v4, 0x0

    aget-object v4, p4, v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isDesktopConnectivityEnabled(Z)Z

    move-result v60

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isDesktopConnectivityEnabled"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2361

    :cond_253d
    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v5, 0x0

    aget-object v5, p4, v5

    const/16 v76, 0x1

    aget-object v76, p4, v76

    move-object/from16 v0, v35

    move-object/from16 v1, v76

    invoke-virtual {v0, v4, v5, v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->bluetoothLog(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v60

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "bluetoothLog"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2361

    :cond_2574
    const/4 v4, 0x0

    return-object v4

    :pswitch_2576
    if-eqz p3, :cond_72

    const-string/jumbo v4, "isProfileAuthorizedBySecurityPolicy"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2591

    if-eqz p4, :cond_258f

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_268f

    :cond_258f
    const/4 v4, 0x0

    return-object v4

    :cond_2591
    const-string/jumbo v4, "isBluetoothLogEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25c2

    invoke-static {}, Landroid/sec/enterprise/BluetoothUtils;->isBluetoothLogEnabled()Z

    move-result v60

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isBluetoothLogEnabled"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_25c1
    :goto_25c1
    return-object v53

    :cond_25c2
    const-string/jumbo v4, "isPairingAllowedbySecurityPolicy"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25db

    if-eqz p4, :cond_25d9

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_26bd

    :cond_25d9
    const/4 v4, 0x0

    return-object v4

    :cond_25db
    const-string/jumbo v4, "isHeadsetAllowedBySecurityPolicy"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25f4

    if-eqz p4, :cond_25f2

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_2705

    :cond_25f2
    const/4 v4, 0x0

    return-object v4

    :cond_25f4
    const-string/jumbo v4, "isSocketAllowedBySecurityPolicy"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_260e

    if-eqz p4, :cond_260c

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x3

    if-ge v4, v5, :cond_2737

    :cond_260c
    const/4 v4, 0x0

    return-object v4

    :cond_260e
    const-string/jumbo v4, "bluetoothSocketLog"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2628

    if-eqz p4, :cond_2626

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x3

    if-ge v4, v5, :cond_2784

    :cond_2626
    const/4 v4, 0x0

    return-object v4

    :cond_2628
    const-string/jumbo v4, "isSvcRfComPortNumberBlockedBySecurityPolicy"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2641

    if-eqz p4, :cond_263f

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_27ae

    :cond_263f
    const/4 v4, 0x0

    return-object v4

    :cond_2641
    const-string/jumbo v4, "bluetoothLog"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_265b

    if-eqz p4, :cond_2659

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_27dc

    :cond_2659
    const/4 v4, 0x0

    return-object v4

    :cond_265b
    const-string/jumbo v4, "bluetoothLogForRemote"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2675

    if-eqz p4, :cond_2673

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x3

    if-ge v4, v5, :cond_27ed

    :cond_2673
    const/4 v4, 0x0

    return-object v4

    :cond_2675
    const-string/jumbo v4, "bluetoothLogForDevice"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25c1

    if-eqz p4, :cond_268d

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x3

    if-ge v4, v5, :cond_2804

    :cond_268d
    const/4 v4, 0x0

    return-object v4

    :cond_268f
    const/4 v4, 0x0

    aget-object v4, p4, v4

    invoke-static {v4}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v4

    invoke-static {v4}, Landroid/sec/enterprise/BluetoothUtils;->isProfileAuthorizedBySecurityPolicy(Landroid/os/ParcelUuid;)Z

    move-result v60

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isProfileAuthorizedBySecurityPolicy"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_25c1

    :cond_26bd
    const/4 v4, 0x0

    aget-object v4, p4, v4

    invoke-static {v4}, Landroid/sec/enterprise/BluetoothUtils;->isPairingAllowedbySecurityPolicy(Ljava/lang/String;)Z

    move-result v60

    const-string/jumbo v4, "SecContentProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v76, "PAIRINGALLOWEDBYSECURITY = "

    move-object/from16 v0, v76

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v60

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isPairingAllowedbySecurityPolicy"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_25c1

    :cond_2705
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-static {v4}, Landroid/sec/enterprise/BluetoothUtils;->isHeadsetAllowedBySecurityPolicy(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v60

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isHeadsetAllowedBySecurityPolicy"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_25c1

    :cond_2737
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/16 v76, 0x2

    aget-object v76, p4, v76

    invoke-static/range {v76 .. v76}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v76

    const/16 v77, 0x3

    aget-object v77, p4, v77

    invoke-static/range {v77 .. v77}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v77

    move/from16 v0, v76

    move-object/from16 v1, v77

    invoke-static {v4, v5, v0, v1}, Landroid/sec/enterprise/BluetoothUtils;->isSocketAllowedBySecurityPolicy(Landroid/bluetooth/BluetoothDevice;IILandroid/os/ParcelUuid;)Z

    move-result v60

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isSocketAllowedBySecurityPolicy"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_25c1

    :cond_2784
    const/4 v4, 0x0

    aget-object v4, p4, v4

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v5

    const/16 v76, 0x1

    aget-object v76, p4, v76

    move-object/from16 v0, v76

    invoke-virtual {v5, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    const/16 v76, 0x2

    aget-object v76, p4, v76

    invoke-static/range {v76 .. v76}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v76

    const/16 v77, 0x3

    aget-object v77, p4, v77

    invoke-static/range {v77 .. v77}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v77

    move/from16 v0, v76

    move/from16 v1, v77

    invoke-static {v4, v5, v0, v1}, Landroid/sec/enterprise/BluetoothUtils;->bluetoothSocketLog(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;II)V

    goto/16 :goto_25c1

    :cond_27ae
    const/4 v4, 0x0

    aget-object v4, p4, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Landroid/sec/enterprise/BluetoothUtils;->isSvcRfComPortNumberBlockedBySecurityPolicy(I)Z

    move-result v60

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isSvcRfComPortNumberBlockedBySecurityPolicy"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_25c1

    :cond_27dc
    invoke-static {}, Landroid/sec/enterprise/BluetoothUtils;->isBluetoothLogEnabled()Z

    move-result v4

    if-eqz v4, :cond_2659

    const/4 v4, 0x0

    aget-object v4, p4, v4

    const/4 v5, 0x1

    aget-object v5, p4, v5

    invoke-static {v4, v5}, Landroid/sec/enterprise/BluetoothUtils;->bluetoothLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_25c1

    :cond_27ed
    invoke-static {}, Landroid/sec/enterprise/BluetoothUtils;->isBluetoothLogEnabled()Z

    move-result v4

    if-eqz v4, :cond_2673

    const/4 v4, 0x0

    aget-object v4, p4, v4

    const/4 v5, 0x1

    aget-object v5, p4, v5

    const/16 v76, 0x2

    aget-object v76, p4, v76

    move-object/from16 v0, v76

    invoke-static {v4, v5, v0}, Landroid/sec/enterprise/BluetoothUtils;->bluetoothLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_25c1

    :cond_2804
    invoke-static {}, Landroid/sec/enterprise/BluetoothUtils;->isBluetoothLogEnabled()Z

    move-result v4

    if-eqz v4, :cond_268d

    const/4 v4, 0x2

    aget-object v4, p4, v4

    if-nez v4, :cond_2822

    const/4 v4, 0x0

    aget-object v4, p4, v4

    const/4 v5, 0x1

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/16 v76, 0x0

    move-object/from16 v0, v76

    invoke-static {v4, v5, v0}, Landroid/sec/enterprise/BluetoothUtils;->bluetoothLog(Ljava/lang/String;ILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_25c1

    :cond_2822
    const/4 v4, 0x0

    aget-object v4, p4, v4

    const/4 v5, 0x1

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v76

    const/16 v77, 0x2

    aget-object v77, p4, v77

    invoke-virtual/range {v76 .. v77}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v76

    move-object/from16 v0, v76

    invoke-static {v4, v5, v0}, Landroid/sec/enterprise/BluetoothUtils;->bluetoothLog(Ljava/lang/String;ILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_25c1

    :pswitch_283f
    const-string/jumbo v4, "roaming_policy"

    invoke-static {v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Lcom/android/server/enterprise/restriction/RoamingPolicy;

    if-eqz v45, :cond_72

    if-eqz p3, :cond_72

    const-string/jumbo v4, "isRoamingSyncEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2884

    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->isRoamingSyncEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v60

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isRoamingSyncEnabled"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_2883
    return-object v53

    :cond_2884
    const-string/jumbo v4, "isRoamingPushEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28bc

    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->isRoamingPushEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v60

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isRoamingPushEnabled"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_2883

    :cond_28bc
    const-string/jumbo v4, "isRoamingDataEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28f4

    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->isRoamingDataEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v60

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isRoamingDataEnabled"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_2883

    :cond_28f4
    const-string/jumbo v4, "isRoamingVoiceCallsEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_292d

    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->isRoamingVoiceCallsEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v60

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isRoamingVoiceCallsEnabled"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2883

    :cond_292d
    const/4 v4, 0x0

    return-object v4

    :pswitch_292f
    const-string/jumbo v4, "location_policy"

    invoke-static {v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcom/android/server/enterprise/location/LocationPolicy;

    if-eqz v41, :cond_72

    if-eqz p3, :cond_72

    const-string/jumbo v4, "isLocationProviderBlocked"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2955

    if-eqz p4, :cond_2953

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_29a7

    :cond_2953
    const/4 v4, 0x0

    return-object v4

    :cond_2955
    const-string/jumbo v4, "isLocationProviderBlockedAsUser"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_296f

    if-eqz p4, :cond_296d

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_29d2

    :cond_296d
    const/4 v4, 0x0

    return-object v4

    :cond_296f
    const-string/jumbo v4, "isGPSStateChangeAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a4c

    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/location/LocationPolicy;->isGPSStateChangeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v60

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isGPSStateChangeAllowed"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_29a6
    return-object v53

    :cond_29a7
    const/4 v4, 0x0

    aget-object v4, p4, v4

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/location/LocationPolicy;->isLocationProviderBlocked(Ljava/lang/String;)Z

    move-result v60

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isLocationProviderBlocked"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_29a6

    :cond_29d2
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2a42

    const/4 v4, 0x1

    aget-object v4, p4, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v57

    const/4 v4, -0x2

    move/from16 v0, v57

    if-ne v0, v4, :cond_2a14

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v57

    const-string/jumbo v4, "SecContentProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v76, "isLocationProviderBlockedAsUser using userId = "

    move-object/from16 v0, v76

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v76, " instead of UserHandle.USER_CURRENT"

    move-object/from16 v0, v76

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a14
    const/4 v4, 0x0

    aget-object v4, p4, v4

    move-object/from16 v0, v41

    move/from16 v1, v57

    invoke-virtual {v0, v4, v1}, Lcom/android/server/enterprise/location/LocationPolicy;->isLocationProviderBlockedAsUser(Ljava/lang/String;I)Z

    move-result v60

    :goto_2a1f
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isLocationProviderBlockedAsUser"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_29a6

    :cond_2a42
    const/4 v4, 0x0

    aget-object v4, p4, v4

    move-object/from16 v0, v41

    invoke-virtual {v0, v4, v6}, Lcom/android/server/enterprise/location/LocationPolicy;->isLocationProviderBlockedAsUser(Ljava/lang/String;I)Z

    move-result v60

    goto :goto_2a1f

    :cond_2a4c
    const/4 v4, 0x0

    return-object v4

    :pswitch_2a4e
    const-string/jumbo v4, "auditlog"

    invoke-static {v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/android/server/enterprise/auditlog/AuditLogService;

    if-eqz v34, :cond_72

    if-eqz p3, :cond_72

    const-string/jumbo v4, "isAuditLogEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_72

    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Lcom/android/server/enterprise/auditlog/AuditLogService;->isAuditLogEnabledAsUser(I)Z

    move-result v15

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isAuditLogEnabled"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v53

    :pswitch_2a8e
    const-string/jumbo v4, "smartcard_browser_policy"

    invoke-static {v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;

    if-eqz v49, :cond_72

    if-eqz p3, :cond_2ad3

    const-string/jumbo v4, "isAuthenticationEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2ad3

    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v49

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->isAuthenticationEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v16

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isAuthenticationEnabled"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v53

    :cond_2ad3
    if-eqz p3, :cond_72

    const-string/jumbo v4, "getClientCertificateAlias"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_72

    if-eqz p4, :cond_2aec

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_2aee

    :cond_2aec
    const/4 v4, 0x0

    return-object v4

    :cond_2aee
    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v5, 0x0

    aget-object v5, p4, v5

    const/16 v76, 0x1

    aget-object v76, p4, v76

    invoke-static/range {v76 .. v76}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v76

    move-object/from16 v0, v49

    move/from16 v1, v76

    invoke-virtual {v0, v4, v5, v1}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->getClientCertificateAlias(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v64

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "getClientCertificateAlias"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v64, v4, v5

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v53

    :pswitch_2b23
    const-string/jumbo v4, "security_policy"

    invoke-static {v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Lcom/android/server/enterprise/security/SecurityPolicy;

    if-eqz v48, :cond_72

    if-eqz p3, :cond_72

    const-string/jumbo v4, "isDodBannerVisible"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b68

    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v48

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/security/SecurityPolicy;->isDodBannerVisible(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v23

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isDodBannerVisible"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_2b67
    return-object v53

    :cond_2b68
    const-string/jumbo v4, "getCredentialStorageStatus"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2bba

    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v48

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/security/SecurityPolicy;->getCredentialStorageStatus(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v59

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p3, v4, v5

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Integer;

    invoke-static/range {v59 .. v59}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    const-string/jumbo v4, "SecContentProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v76, "getCredentialStorageStatus = "

    move-object/from16 v0, v76

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v59

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b67

    :cond_2bba
    const/4 v4, 0x0

    return-object v4

    :pswitch_2bbc
    const-string/jumbo v4, "browser_policy"

    invoke-static {v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/android/server/enterprise/browser/BrowserPolicy;

    const-string/jumbo v4, "misc_policy"

    invoke-static {v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Lcom/android/server/enterprise/general/MiscPolicy;

    if-eqz v36, :cond_72

    if-eqz p3, :cond_72

    if-eqz v42, :cond_72

    const-string/jumbo v4, "getURLFilterEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c11

    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v5, 0x1

    const/16 v76, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v76

    invoke-virtual {v0, v4, v5, v1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getURLFilterEnabledEnforcingFirewallPermission(Lcom/samsung/android/knox/ContextInfo;ZZ)Z

    move-result v13

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "getURLFilterEnabled"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_2c10
    :goto_2c10
    return-object v53

    :cond_2c11
    const-string/jumbo v4, "getURLFilterList"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c63

    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v5, 0x1

    const/16 v76, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v76

    invoke-virtual {v0, v4, v5, v1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getURLFilterListEnforcingFirewallPermission(Lcom/samsung/android/knox/ContextInfo;ZZ)Ljava/util/List;

    move-result-object v69

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "getURLFilterList"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v69, :cond_2c10

    invoke-interface/range {v69 .. v69}, Ljava/util/List;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2c10

    invoke-interface/range {v69 .. v69}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :goto_2c4b
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2c10

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v24, v4, v5

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_2c4b

    :cond_2c63
    const-string/jumbo v4, "getURLFilterReportEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2ca0

    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v5, 0x1

    const/16 v76, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v76

    invoke-virtual {v0, v4, v5, v1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getURLFilterReportEnabledEnforcingFirewallPermission(Lcom/samsung/android/knox/ContextInfo;ZZ)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "getURLFilterReportEnabled"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    const/4 v5, 0x0

    aput-object v20, v4, v5

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2c10

    :cond_2ca0
    const-string/jumbo v4, "isUrlBlocked"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2cb9

    if-eqz p4, :cond_2cb7

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_2cea

    :cond_2cb7
    const/4 v4, 0x0

    return-object v4

    :cond_2cb9
    const-string/jumbo v4, "isGlobalProxyAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d1a

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/enterprise/general/MiscPolicy;->isGlobalProxyAllowed()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isGlobalProxyAllowed"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    const/4 v5, 0x0

    aput-object v14, v4, v5

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2c10

    :cond_2cea
    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v5, 0x0

    aget-object v5, p4, v5

    move-object/from16 v0, v36

    invoke-virtual {v0, v4, v5}, Lcom/android/server/enterprise/browser/BrowserPolicy;->isUrlBlocked(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isUrlBlocked"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    const/4 v5, 0x0

    aput-object v19, v4, v5

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2c10

    :cond_2d1a
    const/4 v4, 0x0

    return-object v4

    :pswitch_2d1c
    const-string/jumbo v4, "apppermission_control_policy"

    invoke-static {v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;

    if-eqz v33, :cond_72

    if-eqz p3, :cond_72

    if-eqz p4, :cond_2d36

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    if-gt v4, v5, :cond_2d38

    :cond_2d36
    const/4 v4, 0x0

    return-object v4

    :cond_2d38
    const-string/jumbo v4, "getPermissionBlockedList"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_72

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x1

    aget-object v4, p4, v4

    invoke-static {v4}, Lcom/android/server/enterprise/utils/Utils;->deserializeObjectFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v5, 0x0

    aget-object v5, p4, v5

    move-object/from16 v0, v33

    invoke-virtual {v0, v4, v5, v8}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->getPermissionBlockedList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v56

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "getPermissionBlockedList"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v56, :cond_2d96

    invoke-interface/range {v56 .. v56}, Ljava/util/List;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2d96

    invoke-interface/range {v56 .. v56}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v55

    :goto_2d7e
    invoke-interface/range {v55 .. v55}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2d96

    invoke-interface/range {v55 .. v55}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v54, v4, v5

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_2d7e

    :cond_2d96
    return-object v53

    :pswitch_2d97
    const-string/jumbo v4, "date_time_policy"

    invoke-static {v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lcom/android/server/enterprise/datetime/DateTimePolicy;

    if-eqz v38, :cond_72

    if-eqz p3, :cond_72

    const-string/jumbo v4, "isDateTimeChangeEnalbed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2ddc

    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->isDateTimeChangeEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v60

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isDateTimeChangeEnalbed"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_2ddb
    return-object v53

    :cond_2ddc
    const-string/jumbo v4, "getAutomaticTime"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e14

    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->getAutomaticTime(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v60

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "getAutomaticTime"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_2ddb

    :cond_2e14
    const/4 v4, 0x0

    return-object v4

    :pswitch_2e16
    const-string/jumbo v4, "dex_policy"

    invoke-static {v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/android/server/enterprise/dex/DexPolicy;

    if-eqz v39, :cond_72

    if-eqz p3, :cond_72

    const-string/jumbo v4, "isScreenTimeoutChangeAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e54

    invoke-virtual/range {v39 .. v39}, Lcom/android/server/enterprise/dex/DexPolicy;->isScreenTimeoutChangeAllowed()Z

    move-result v60

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isScreenTimeoutChangeAllowed"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_2e53
    return-object v53

    :cond_2e54
    const-string/jumbo v4, "isDexDisabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e85

    invoke-virtual/range {v39 .. v39}, Lcom/android/server/enterprise/dex/DexPolicy;->isDexDisabled()Z

    move-result v60

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isDexDisabled"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_2e53

    :cond_2e85
    const-string/jumbo v4, "isEthernetOnlyEnforced"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2eb6

    invoke-virtual/range {v39 .. v39}, Lcom/android/server/enterprise/dex/DexPolicy;->isEthernetOnlyEnforced()Z

    move-result v60

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isEthernetOnlyEnforced"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_2e53

    :cond_2eb6
    const-string/jumbo v4, "isVirtualMacAddressEnforced"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2ee8

    invoke-virtual/range {v39 .. v39}, Lcom/android/server/enterprise/dex/DexPolicy;->isVirtualMacAddressEnforced()Z

    move-result v60

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isVirtualMacAddressEnforced"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2e53

    :cond_2ee8
    const-string/jumbo v4, "getVirtualMacAddress"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f15

    invoke-virtual/range {v39 .. v39}, Lcom/android/server/enterprise/dex/DexPolicy;->getVirtualMacAddress()Ljava/lang/String;

    move-result-object v26

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "getVirtualMacAddress"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v26, v4, v5

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2e53

    :cond_2f15
    const/4 v4, 0x0

    return-object v4

    :pswitch_2f17
    const-string/jumbo v4, "spd_control_policy"

    invoke-static {v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/android/server/enterprise/restriction/SPDControlPolicy;

    if-eqz v47, :cond_72

    if-eqz p3, :cond_72

    const-string/jumbo v4, "isSPDAutomaticUpdateEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f58

    const/16 v63, -0x1

    invoke-virtual/range {v47 .. v47}, Lcom/android/server/enterprise/restriction/SPDControlPolicy;->getAutoSecurityPolicyUpdateMode()I

    move-result v63

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isSPDAutomaticUpdateEnabled"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Integer;

    invoke-static/range {v63 .. v63}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_72

    :cond_2f58
    const/4 v4, 0x0

    return-object v4

    :pswitch_2f5a
    const-string/jumbo v4, "SEAMService"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v46

    check-cast v46, Lcom/android/server/SEAMService;

    if-eqz v46, :cond_72

    if-eqz p3, :cond_72

    const-string/jumbo v4, "getSEContainerClipboardMode"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f80

    if-eqz p4, :cond_2f7e

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_2fc6

    :cond_2f7e
    const/4 v4, 0x0

    return-object v4

    :cond_2f80
    const-string/jumbo v4, "getAllSEContainerCategory"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2ffd

    invoke-virtual/range {v46 .. v46}, Lcom/android/server/SEAMService;->getAllSEContainerCategory()Ljava/util/List;

    move-result-object v61

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "getAllSEContainerCategory"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v61, :cond_2ff9

    invoke-interface/range {v61 .. v61}, Ljava/util/List;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2ff9

    invoke-interface/range {v61 .. v61}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v75

    :goto_2fae
    invoke-interface/range {v75 .. v75}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2ff9

    invoke-interface/range {v75 .. v75}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v72

    check-cast v72, Ljava/lang/Integer;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Integer;

    const/4 v5, 0x0

    aput-object v72, v4, v5

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_2fae

    :cond_2fc6
    const/4 v4, 0x0

    aget-object v4, p4, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Lcom/android/server/SEAMService;->getSEContainerClipboardMode(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2ffa

    const/16 v60, 0x1

    :goto_2fd8
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "getSEContainerClipboardMode"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_2ff9
    return-object v53

    :cond_2ffa
    const/16 v60, 0x0

    goto :goto_2fd8

    :cond_2ffd
    const/4 v4, 0x0

    return-object v4

    :pswitch_2fff
    if-eqz p3, :cond_30fe

    const-string/jumbo v4, "isAllowedToShare"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3074

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v32

    invoke-static {v6}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result v4

    if-eqz v4, :cond_3033

    const-string/jumbo v4, "enterprise_dlp_service"

    invoke-static {v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;

    if-eqz v2, :cond_30d3

    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v3, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v4, p4

    move-object/from16 v5, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->isShareAllowed(Lcom/samsung/android/knox/ContextInfo;[Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v32

    :cond_3033
    :goto_3033
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isAllowedToShare"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v53, :cond_3068

    const-string/jumbo v4, "SecContentProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v76, "Cursor not null:"

    move-object/from16 v0, v76

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v76

    move/from16 v0, v76

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3068
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    const/4 v5, 0x0

    aput-object v32, v4, v5

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_3073
    return-object v53

    :cond_3074
    const-string/jumbo v4, "isDLPActivated"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30f3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    invoke-static {v6}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result v4

    if-eqz v4, :cond_3092

    invoke-static {v6}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->isActivated(I)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    :cond_3092
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isDLPActivated"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v53, :cond_30c7

    const-string/jumbo v4, "SecContentProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v76, "Cursor not null:"

    move-object/from16 v0, v76

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v76

    move/from16 v0, v76

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30c7
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Boolean;

    const/4 v5, 0x0

    aput-object v31, v4, v5

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_3073

    :cond_30d3
    const-string/jumbo v4, "SecContentProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v76, "dlp service is null:"

    move-object/from16 v0, v76

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3033

    :cond_30f3
    const-string/jumbo v4, "SecContentProvider"

    const-string/jumbo v5, "Case DLP selection is not matched"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    return-object v4

    :cond_30fe
    const-string/jumbo v4, "SecContentProvider"

    const-string/jumbo v5, "Case DLP selection null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_72

    :pswitch_3109
    if-eqz p3, :cond_72

    const-string/jumbo v4, "getDefaultCaptivePortalUrl"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_314c

    const-string/jumbo v4, "SecContentProvider"

    const-string/jumbo v5, "getDefaultCaptivePortalUrl"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "firewall"

    invoke-static {v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/android/server/enterprise/firewall/Firewall;

    const/16 v65, 0x0

    if-eqz v40, :cond_3130

    invoke-virtual/range {v40 .. v40}, Lcom/android/server/enterprise/firewall/Firewall;->getDefaulCaptivePortalURL()Ljava/lang/String;

    move-result-object v65

    :cond_3130
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "getDefaultCaptivePortalUrl"

    const/16 v76, 0x0

    aput-object v5, v4, v76

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v65, v4, v5

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_314c
    return-object v53

    nop

    :pswitch_data_314e
    .packed-switch 0x1
        :pswitch_72
        :pswitch_2a4e
        :pswitch_22ff
        :pswitch_2576
        :pswitch_219b
        :pswitch_165b
        :pswitch_72
        :pswitch_72
        :pswitch_72
        :pswitch_2bbc
        :pswitch_72
        :pswitch_292f
        :pswitch_19c1
        :pswitch_1d0e
        :pswitch_74
        :pswitch_5e5
        :pswitch_c39
        :pswitch_1178
        :pswitch_283f
        :pswitch_2b23
        :pswitch_72
        :pswitch_2a8e
        :pswitch_2d1c
        :pswitch_2d97
        :pswitch_2f17
        :pswitch_2f5a
        :pswitch_2fff
        :pswitch_3109
        :pswitch_2e16
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6

    const/4 v0, 0x0

    return v0
.end method
