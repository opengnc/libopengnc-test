#-------------------------------------------------
#
# Project created by QtCreator 2015-07-20T13:12:26
#
#-------------------------------------------------

QT       += core

QT       -= gui

TARGET = libopengnc-test
CONFIG   += console c++11
CONFIG   -= app_bundle

TEMPLATE = app

macx: {
    INCLUDEPATH += /opt/local/include/eigen3
    INCLUDEPATH += /opt/local/include

    QMAKE_CXXFLAGS += -stdlib=libc++
    LIBS += -stdlib=libc++
} else:unix: {
    INCLUDEPATH += /usr/include/eigen3
}

INCLUDEPATH += Catch/include \
                libopengnc/include

SOURCES += main.cpp \
    gps.cpp \
    pid.cpp

HEADERS += \
    Catch/include/external/clara.h \
    Catch/include/external/tbc_text_format.h \
    Catch/include/internal/catch_approx.hpp \
    Catch/include/internal/catch_assertionresult.h \
    Catch/include/internal/catch_assertionresult.hpp \
    Catch/include/internal/catch_capture.hpp \
    Catch/include/internal/catch_clara.h \
    Catch/include/internal/catch_commandline.hpp \
    Catch/include/internal/catch_common.h \
    Catch/include/internal/catch_common.hpp \
    Catch/include/internal/catch_compiler_capabilities.h \
    Catch/include/internal/catch_config.hpp \
    Catch/include/internal/catch_console_colour.hpp \
    Catch/include/internal/catch_console_colour_impl.hpp \
    Catch/include/internal/catch_context.h \
    Catch/include/internal/catch_context_impl.hpp \
    Catch/include/internal/catch_debugger.h \
    Catch/include/internal/catch_debugger.hpp \
    Catch/include/internal/catch_default_main.hpp \
    Catch/include/internal/catch_evaluate.hpp \
    Catch/include/internal/catch_exception_translator_registry.hpp \
    Catch/include/internal/catch_expression_lhs.hpp \
    Catch/include/internal/catch_fatal_condition.hpp \
    Catch/include/internal/catch_generators.hpp \
    Catch/include/internal/catch_generators_impl.hpp \
    Catch/include/internal/catch_impl.hpp \
    Catch/include/internal/catch_interfaces_capture.h \
    Catch/include/internal/catch_interfaces_config.h \
    Catch/include/internal/catch_interfaces_exception.h \
    Catch/include/internal/catch_interfaces_generators.h \
    Catch/include/internal/catch_interfaces_registry_hub.h \
    Catch/include/internal/catch_interfaces_reporter.h \
    Catch/include/internal/catch_interfaces_runner.h \
    Catch/include/internal/catch_interfaces_tag_alias_registry.h \
    Catch/include/internal/catch_interfaces_testcase.h \
    Catch/include/internal/catch_legacy_reporter_adapter.h \
    Catch/include/internal/catch_legacy_reporter_adapter.hpp \
    Catch/include/internal/catch_list.hpp \
    Catch/include/internal/catch_matchers.hpp \
    Catch/include/internal/catch_message.h \
    Catch/include/internal/catch_message.hpp \
    Catch/include/internal/catch_notimplemented_exception.h \
    Catch/include/internal/catch_notimplemented_exception.hpp \
    Catch/include/internal/catch_objc.hpp \
    Catch/include/internal/catch_objc_arc.hpp \
    Catch/include/internal/catch_option.hpp \
    Catch/include/internal/catch_platform.h \
    Catch/include/internal/catch_ptr.hpp \
    Catch/include/internal/catch_reenable_warnings.h \
    Catch/include/internal/catch_registry_hub.hpp \
    Catch/include/internal/catch_reporter_registrars.hpp \
    Catch/include/internal/catch_reporter_registry.hpp \
    Catch/include/internal/catch_result_builder.h \
    Catch/include/internal/catch_result_builder.hpp \
    Catch/include/internal/catch_result_type.h \
    Catch/include/internal/catch_runner_impl.hpp \
    Catch/include/internal/catch_section.h \
    Catch/include/internal/catch_section.hpp \
    Catch/include/internal/catch_section_info.h \
    Catch/include/internal/catch_section_info.hpp \
    Catch/include/internal/catch_stream.h \
    Catch/include/internal/catch_stream.hpp \
    Catch/include/internal/catch_streambuf.h \
    Catch/include/internal/catch_suppress_warnings.h \
    Catch/include/internal/catch_tag_alias.h \
    Catch/include/internal/catch_tag_alias_registry.h \
    Catch/include/internal/catch_tag_alias_registry.hpp \
    Catch/include/internal/catch_test_case_info.h \
    Catch/include/internal/catch_test_case_info.hpp \
    Catch/include/internal/catch_test_case_registry_impl.hpp \
    Catch/include/internal/catch_test_case_tracker.hpp \
    Catch/include/internal/catch_test_registry.hpp \
    Catch/include/internal/catch_test_spec.hpp \
    Catch/include/internal/catch_test_spec_parser.hpp \
    Catch/include/internal/catch_text.h \
    Catch/include/internal/catch_timer.h \
    Catch/include/internal/catch_timer.hpp \
    Catch/include/internal/catch_tostring.h \
    Catch/include/internal/catch_tostring.hpp \
    Catch/include/internal/catch_totals.hpp \
    Catch/include/internal/catch_version.h \
    Catch/include/internal/catch_version.hpp \
    Catch/include/internal/catch_xmlwriter.hpp \
    Catch/include/reporters/catch_reporter_bases.hpp \
    Catch/include/reporters/catch_reporter_compact.hpp \
    Catch/include/reporters/catch_reporter_console.hpp \
    Catch/include/reporters/catch_reporter_junit.hpp \
    Catch/include/reporters/catch_reporter_teamcity.hpp \
    Catch/include/reporters/catch_reporter_xml.hpp \
    Catch/include/catch.hpp \
    Catch/include/catch_runner.hpp \
    Catch/include/catch_with_main.hpp \
    Catch/projects/runners/iTchRunner/internal/iTchRunnerAppDelegate.h \
    Catch/projects/runners/iTchRunner/internal/iTchRunnerMainView.h \
    Catch/projects/runners/iTchRunner/internal/iTchRunnerReporter.h \
    Catch/projects/XCode/iOSTest/iOSTest/TestObj.h \
    Catch/projects/XCode/OCTest/OCTest/CatchOCTestCase.h \
    Catch/projects/XCode/OCTest/OCTest/TestObj.h \
    Catch/single_include/catch.hpp
