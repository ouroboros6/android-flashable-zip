#!/sbin/sh

# At the time this file is executed, the following partitions are mounted:
# /system_root /system /system_ext /vendor /product /data

# Use this script to apply your modification to the different partitions.
# See utils/utils.sh for the list of available helper functions

# You can extract all your files to $INSTALLDIR, which is a temporary directory.

# Include utils.sh
source "$INSTALLDIR/utils/utils.sh"

ui_print "Applying overlay updates..."

# List of overlay directories
overlay_dirs=(
    AcherusSignal
    AcherusSubsSignalG
    AcherusSubsSignalT
    AcherusSubsWifiG
    AcherusSubsWifiT
    AcherusWiFi
    AndroidNavbar
    AsusNavbar
    AuroraData
    BarsSignal
    BarsWiFi
    BrightnessSliderAcun
    BrightnessSliderBang
    BrightnessSliderCyberpunk
    BrightnessSliderFilled
    BrightnessSliderGradientRoundedBar
    BrightnessSliderLeafyOutline
    BrightnessSliderMinimalThumb
    BrightnessSliderOutline
    BrightnessSliderRoundedClip
    BrightnessSliderShaded
    BrightnessSliderThin
    BrightnessSliderTranslucent
    DerpFestBlackTheme
    DoraNavbar
    DoraWiFi
    FaintUIData
    FontAclonicaSource
    FontAmaranteSource
    FontArbutusSource
    FontArvoLato
    FontBariolSource
    FontCagliostroSource
    FontComfortaaSource
    FontComicSansSource
    FontCoolstorySource
    FontFluidSans
    FontHarmonySans
    FontInterSource
    FontJetBrainsMono
    FontJetBrainsMonoNL
    FontLGSmartGothicSource
    FontMontserratSource
    FontNothingDot
    FontOneplusSlateSource
    FontRosemarySource
    FontRubikRubik
    FontSamsungOneSource
    FontSonySketchSource
    FontStoropiaSourceOverlay
    FontSurferSource
    FontTinkerbell
    GradiconData
    GradiconSignal
    GradiconWiFi
    IconDataFive
    IconDataFour
    IconDataOne
    IconDataThree
    IconDataTwo
    IconShapeCloudy
    IconShapeCylindrical
    IconShapeFlower
    IconShapeHeart
    IconShapeHexagon
    IconShapeIos
    IconShapeLeaf
    IconShapePebble
    IconShapeRiceBalls
    IconShapeRoundedHexagon
    IconShapeRoundedRect
    IconShapeSquare
    IconShapeSquircle
    IconShapeStretched
    IconShapeTaperedRect
    IconShapeTeardrop
    IconShapeVessel
    InsideSignal
    InsideWiFi
    IosSignal
    KronicNavbar
    LineageQSGradient
    LivSignal
    LivWifi
    LornData
    MotoNavbar
    NexusNavbar
    NothingDotSignal
    NothingDotWiFi
    OdineeSignal
    OldNavbar
    OnePlusNavbar
    OneUiNavbar
    PavlovaWiFi
    PDNavbar
    PlumpyData
    PUISignal
    RohieIconMeowOverlay
    RoundQS
    RoundSignal
    RoundWiFi
    SammyNavbar
    SneakySignal
    SneakyWiFi
    StrokeSignal
    StrokeWiFi
    TecnoCamonNavbar
    WannaSignal
    WavySignal
    WavyWiFi
    WeedWiFi
    WindowsSignal
    XperiaSignal
    XperiaWiFi
    ZigZagSignal
    ZigZagWiFi
)

# Copy each directory to /product/overlay
for dir in "${overlay_dirs[@]}"; do
    ui_print "Copying $dir to /product/overlay..."
    package_extract_dir "product/$dir" "/product/overlay/$dir"
    ui_print "$dir copied."
done

ui_print "Overlay updates successfully installed!"
